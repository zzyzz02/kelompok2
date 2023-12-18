<?php

class Mapel extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_mapel');
	}

	function data()
	{

		$data = $this->model_mapel->getData();
		echo json_encode(array('data' => $data));
	}

	function index()
	{
		$this->template->load('template', 'mapel/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_mapel->save();
			redirect('mapel');
		} else {
			$this->template->load('template', 'mapel/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_mapel->update();
			redirect('mapel');
		} else {
			$kd_mapel 		= $this->uri->segment(3);
			$data['mapel'] 	= $this->db->get_where('mapel', array('kd_mapel' => $kd_mapel))->row_array();
			$this->template->load('template', 'mapel/edit', $data);
		}
	}

	function delete()
	{
		$kode_mapel = $this->uri->segment(3);
		if (!empty($kode_mapel)) {
			$this->db->where('kd_mapel', $kode_mapel);
			$this->db->delete('mapel');
		}
		redirect('mapel');
	}
}
