<?php

class Ruangan extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_ruangan');
	}

	function data()
	{
		$data = $this->model_ruangan->getData();
		echo json_encode(array('data' => $data));
	}

	function index()
	{
		$this->template->load('template', 'ruangan/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_ruangan->save();
			redirect('ruangan');
		} else {
			$this->template->load('template', 'ruangan/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_ruangan->update();
			redirect('ruangan');
		} else {
			$kode_ruangan	 = $this->uri->segment(3);
			$data['ruangan'] = $this->db->get_where('ruangan', array('kd_ruangan' => $kode_ruangan))->row_array();
			$this->template->load('template', 'ruangan/edit', $data);
		}
	}

	function delete()
	{
		$kode_ruangan = $this->uri->segment(3);
		if (!empty($kode_ruangan)) {
			$this->db->where('kd_ruangan', $kode_ruangan);
			$this->db->delete('ruangan');
		}
		redirect('ruangan');
	}
}
