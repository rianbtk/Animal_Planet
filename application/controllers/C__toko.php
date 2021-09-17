<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C__toko extends CI_Controller {

	public function __construct()
	{
		parent:: __construct();
		$this->load->model('M__app');
		$this->load->library(array('pagination','form_validation'));
		get_breadcrumb();	
		access(1);
	}

	public function index($off=0)
	{
		$jumlah=$this->M__app->getdata('toko')->num_rows();
		$data['title']       ="Transaksi";
		$data['active']      ="toko";
		$data['active_open'] ="toko";
		$data['content']     ='toko/index.php';
		$data['all']         =$this->M__app->getdatapagetoko($off)->result();
		$data['page']        =halaman($jumlah,'toko.aspx',2);

		$this->breadcrumb->append_crumb('Transaksi', site_url('toko.aspx'));

		$this->load->view('backend/template',$data);
	}

	public function view_detail_toko($id)
	{
		$data['title']       ="Detail Transaksi | Transaksi";
		$data['active']      ="toko";
		$data['active_open'] ="toko";
		$trans=$this->M__app->gradeone('toko','id_toko',$id)->row_array();
		if(in_array($trans['city'], getarr(1)))
		{
            $data['content']='toko/details.php';
        }
        else
        { 
            $data['content']='toko/detail.php';
        }

		$data['details'] =$this->M__app->getdetails($id)->result_array();
		$data['get']     =$trans;
		$data['pay']     =$pay=$this->M__app->getdatapaymentId($trans['payment_toko'])->row_array();

		$this->breadcrumb->append_crumb('Transaksi', site_url('toko.aspx'));
		$this->breadcrumb->append_crumb('Detail Transaksi', site_url('toko.aspx'));

		$this->load->view('backend/template',$data);
	}

	public function filter_toko($offset=0)
	{
		$this->load->library('pagination');
		if ($this->input->post('search')==1)
		{
			$session=array(
				"nama"    =>$this->input->post('nama'),
				"email"   =>$this->input->post('email'),
				"telepon" =>$this->input->post('telepon'),
				"tanggal" =>$this->input->post('tanggal'),
				"status"  =>$this->input->post('status'),
			);
			$this->session->set_userdata($session);
		}
		$to=$this->M__app->getTransSearch($offset);

		if($to->num_rows()==0)
		{
			$this->session->set_flashdata('error', 'Data tidak ditemukan!');
			redirect('toko.aspx');	
		}
		else
		{
			$jumlah=$this->M__app->getTransNum()->num_rows();
			$data['title']       ="Filter | Transaksi";
			$data['active']      ="toko";
			$data['active_open'] ="toko";
			$data['content'] ='toko/search.php';
			$data['all']     =$to->result();
			$data['page']    =halaman($jumlah,'filter_toko.aspx',2);
			$data['jumlah']  =$jumlah;
			$this->breadcrumb->append_crumb('Transaksi', site_url('toko.aspx'));
			$this->breadcrumb->append_crumb('Filter', site_url('toko.aspx'));
			$this->load->view('backend/template',$data);
		}
	}

	public function update_state()
	{
		$total=$this->input->post('id');
		if($this->input->post('warning'))
		{
			$state=0;
			$alert="Data Transaksi Berhasil Di Perbarui";
		}
		elseif($this->input->post('fixed'))
		{
			$state=2;
			$alert="Data Transaksi Berhasil Di Perbarui";
		}
		else
		{
			for ($i=0; $i < count($total); $i++) 
			{ 
				$id       =$total[$i];
				$getTrans =$this->M__app->gradeone('toko','id_toko',$id)->row_array();
				if(file_exists('uploads/bukti/'.$getTrans['bukti']))
				{
					unlink('uploads/bukti/'.$getTrans['bukti']);
				}
				$get=$this->M__app->gradeone('toko_details','id_toko',$id)->result_array();

				foreach ($get as $items)
				{
					$prd       =$this->M__app->gradeone('product','id_product',$items['id_product'])->row_array();
					$new_stock =$prd['stock_product']+$items['qty_toko'];
		            $update=array(
		            	"stock_product"=>$new_stock,
		            );
		            $this->M__app->update('product',$update,'id_product',$items['id_product']);
				}

				$this->M__app->delete('toko','id_toko',$total[$i]);
				$this->M__app->delete('toko_details','id_toko',$total[$i]);
			}

			$this->session->set_flashdata('success','Data Transaksi Berhasil Di Hapus');
			redirect('toko.aspx');
		}

		if(!$this->input->post('delete'))
		{
			for ($i=0; $i < count($total); $i++) 
			{ 
				$data=array(
					"state"=>$state,
				);
				$this->M__app->update('toko',$data,'id_toko',$total[$i]);
			}
			$this->session->set_flashdata('success',$alert);
			redirect('toko.aspx');
		}
	}

	public function send()
	{
		$this->form_validation->set_rules('id', 'id', 'trim|required');
		$id =filter($this->input->post('id'));
		$get =$this->M__app->gradeone('toko','id_toko',$id)->row_array();
        $this->form_validation->set_rules('no_resi', 'resi', 'trim|required');

		if(!in_array($get['city'], getarr(1)))
		{
			
        }
        else
        { 
            
        }
		if ($this->form_validation->run() == FALSE) 
		{
			$this->session->set_flashdata('error', 'Data Tidak Valid, Cek Data Anda Kembali!');
			redirect('detail_toko.aspx/'.$this->input->post('id'));
		} 
		else 
		{
			$update=array(
				"no_resi"=>filter($this->input->post('no_resi')),
				"state"=>1
			);
			$this->M__app->update('toko',$update,'id_toko',$get['id_toko']);
			
			email_config();
			$this->email->from(gettoko('email_shop'), gettoko('longname_shop')?gettoko('longname_shop'):gettoko('shortname_shop'));
		    $this->email->to($get['email']);
		    $this->email->set_newline("\r\n");
		    $this->email->subject('Konfirmasi Bukti Transfer');

		    if(gettoko('gratis_ongkir_wilayah')==1)
		    {
		    	if($get['city']==gettoko('kabupaten_shop'))
		    	{
		    		$this->email->message('Selamat pesanan anda dengan kode pembelian '.$get['kode_pembelian'].' telah dikirim!<br><br>Cek status pemesanan anda di menu <b><a href="'.site_url('order.aspx').'">Cek Pesanan</a></b><br> Terimakasih telah mempercayai kami.');
		    		
		    	}
		    	else
		    	{
		    		$this->email->message('Selamat pesanan anda dengan kode pembelian '.$get['kode_pembelian'].' telah dikirim!<br><br>Dengan No Resi :<b>'.$update['no_resi'].'</b><br>Cek status pemesanan anda di menu <b><a href="'.site_url('order.aspx').'">Cek Pesanan</a></b><br> Terimakasih telah mempercayai kami.');
		    	}
		    }

		    $this->email->message('Selamat pesanan anda dengan kode pembelian '.$get['kode_pembelian'].' telah dikirim!<br><br>Dengan No Resi :<b>'.$update['no_resi'].'</b><br>Cek status pemesanan anda di menu <b><a href="'.site_url('order.aspx').'">Cek Pesanan</a></b><br> Terimakasih telah mempercayai kami.');
			$this->email->send();

			$this->session->set_flashdata('success', 'Data Berhasil Di Perbarui');
			redirect('detail_toko.aspx/'.$get['id_toko']);
		}
	}

	public function print_toko($id)
	{
		$trans=$this->M__app->gradeone('toko','id_toko',$id)->row_array();
		$data['details'] =$this->M__app->getdetails($id)->result_array();
		$data['get']     =$trans;

		if(in_array($trans['city'], getarr(1)))
		{
            $this->load->view('backend/toko/prints.php',$data);
        }
        else
        { 
            $this->load->view('backend/toko/print.php',$data);
        }
	}
}

