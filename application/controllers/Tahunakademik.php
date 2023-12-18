<?php

class Tahunakademik extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_tahunakademik');
	}

	function data()
	{

		$data = $this->model_tahunakademik->getData();
		echo json_encode(array(
			"data" => $data
		));
	}

	function index()
	{
		$this->template->load('template', 'tahunakademik/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_tahunakademik->save();

			// untuk mengambil id tahun akdemik terakhir yang diinputkan
			$idTahunAkademik = $this->db->insert_id();

			$this->load->model('model_walikelas');
			// insert data dummy walikelas secara otomatis ketika add tahun akademik baru
			$this->model_walikelas->insert_walikelas($idTahunAkademik);
			redirect('tahunakademik');
		} else {
			$this->template->load('template', 'tahunakademik/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_tahunakademik->update();
			redirect('tahunakademik');
		} else {
			$id_tahunakademik 		= $this->uri->segment(3);
			$data['tahunakademik']	= $this->db->get_where('tahun_akademik', array('id_tahun_akademik' => $id_tahunakademik))->row_array();
			$this->template->load('template', 'tahunakademik/edit', $data);
		}
	}

	function delete()
	{
		$id_tahunakademik = $this->uri->segment(3);
		if (!empty($id_tahunakademik)) {
			$this->db->where('id_tahun_akademik', $id_tahunakademik);
			$this->db->delete('tahun_akademik');
		}
		redirect('tahunakademik');
	}

	function aktif()
	{
		$id_tahunakademik = $this->uri->segment(3);
		//$query = "SELECT * FROM tahun_akademik WHERE id_tahun_akademik = '$id_tahunakademik' AND is_aktif='Y'";
		//$aktif = $this->db->query($query)->result();
		$off_all = "UPDATE tahun_akademik SET is_aktif = 'N' WHERE is_aktif = 'Y'";
		$off 	 = $this->db->query($off_all);
		$on 	 = "UPDATE tahun_akademik SET is_aktif = 'Y' WHERE id_tahun_akademik = '$id_tahunakademik'";
		$active	 = $this->db->query($on);
		redirect('tahunakademik');
	}
}
