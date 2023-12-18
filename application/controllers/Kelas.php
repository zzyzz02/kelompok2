<?php

class Kelas extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_kelas');
	}

	function data()
	{
		$data = $this->model_kelas->getData();
		echo json_encode(array('data' => $data));
	}

	function index()
	{
		$this->template->load('template', 'kelas/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_kelas->save();
			redirect('kelas');
		} else {
			$this->template->load('template', 'kelas/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_kelas->update();
			redirect('kelas');
		} else {
			$kd_kelas 		= $this->uri->segment(3);
			$data['kelas']	= $this->db->get_where('kelas', array('kd_kelas' => $kd_kelas))->row_array();
			$this->template->load('template', 'kelas/edit', $data);
		}
	}

	function delete()
	{
		$kode_kelas = $this->uri->segment(3);
		if (!empty($kode_kelas)) {
			$this->db->where('kd_kelas', $kode_kelas);
			$this->db->delete('kelas');
		}
		redirect('kelas');
	}


	// siswa_aktif() -> untuk menampilkan view peserta didik ->terletak di controller Siswa
	// combobox_kelas() -> untuk menampilkan data kelas sesuai jurusan yang dipilih -> terletak di controller Kelas
	// loadDataSiswa() -> untuk menampilkan data siswa nim dan nama sesuai kode_kelas yang dipilih di filter, lalu ditampilkan ke div id = kelas yang bedada di view/siswa_aktif -> terletak di controller Siswa
	function combobox_kelas()
	{
		$jurusan = $_GET['kd_jurusan'];
		echo "<select id='cbkelas' name='kelas' class='form-control' onChange='loadSiswa()'>";

		$this->db->where('kd_jurusan', $jurusan);
		$kelas = $this->db->get('kelas');
		foreach ($kelas->result() as $row) {
			echo "<option value='$row->kd_kelas' onChange='loadSiswa()'>$row->nama_kelas</option>";
		}

		echo "</select>";
	}
}
