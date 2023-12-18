<?php

class Model_ruangan extends CI_Model
{

	public $table = "ruangan";


	function getData()
	{
		$this->db->select('kd_ruangan, nama_ruangan');
		$query = $this->db->get($this->table);
		return $query->result();
	}
	function save()
	{
		$data = array(
			//tabel di database => name di form
			'kd_ruangan'		=> $this->input->post('kd_ruangan', TRUE),
			'nama_ruangan'		=> $this->input->post('nama_ruangan', TRUE)
		);
		$this->db->insert($this->table, $data);
	}

	function update()
	{
		$data = array(
			//tabel di database => name di form
			'nama_ruangan'		=> $this->input->post('nama_ruangan', TRUE)
		);
		$kode_ruangan = $this->input->post('kd_ruangan');
		$this->db->where('kd_ruangan', $kode_ruangan);
		$this->db->update($this->table, $data);
	}
}
