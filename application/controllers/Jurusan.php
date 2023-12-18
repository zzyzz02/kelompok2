<?php

class Jurusan extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_jurusan');
	}

	function data()
	{
		$data = $this->model_jurusan->getData();
		echo json_encode(array('data' => $data));
	}

	function index()
	{
		$this->template->load('template', 'jurusan/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_jurusan->save();
			redirect('jurusan');
		} else {
			$this->template->load('template', 'jurusan/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_jurusan->update();
			redirect('jurusan');
		} else {
			$kode_jurusan		= $this->uri->segment(3);
			$data['jurusan']	= $this->db->get_where('jurusan', array('kd_jurusan' => $kode_jurusan))->row_array();
			$this->template->load('template', 'jurusan/edit', $data);
		}
	}

	function delete()
	{
		$kode_jurusan = $this->uri->segment(3);
		if (!empty($kode_jurusan)) {
			$this->db->where('kd_jurusan', $kode_jurusan);
			$this->db->delete('jurusan');
		}
		redirect('jurusan');
	}
}
