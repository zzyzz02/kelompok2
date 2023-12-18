<?php

class Tingkatan extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_tingkatan');
	}

	function data()
	{
		$data = $this->model_tingkatan->getData();
		echo json_encode(array('data' => $data));
	}


	function index()
	{
		$this->template->load('template', 'tingkatan/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_tingkatan->save();
			redirect('tingkatan');
		} else {
			$this->template->load('template', 'tingkatan/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_tingkatan->update();
			redirect('tingkatan');
		} else {
			$kode_tingkatan		= $this->uri->segment(3);
			$data['tingkatan']	= $this->db->get_where('tingkatan_kelas', array('kd_tingkatan' => $kode_tingkatan))->row_array();
			$this->template->load('template', 'tingkatan/edit', $data);
		}
	}

	function delete()
	{
		$kode_tingkatan = $this->uri->segment(3);
		if (!empty($kode_tingkatan)) {
			$this->db->where('kd_tingkatan', $kode_tingkatan);
			$this->db->delete('tingkatan_kelas');
		}
		redirect('tingkatan');
	}
}
