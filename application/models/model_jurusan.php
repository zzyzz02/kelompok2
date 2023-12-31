<?php

class Model_jurusan extends CI_Model
{

	public $table = "jurusan";

	function getData()
	{
		$this->db->select('kd_jurusan,nama_jurusan ');
		$query = $this->db->get($this->table);
		return $query->result();
	}

	function save()
	{
		$data = array(
			//tabel di database => name di form
			'kd_jurusan'		=> $this->input->post('kd_jurusan', TRUE),
			'nama_jurusan'	=> $this->input->post('nama_jurusan', TRUE)
		);
		$this->db->insert($this->table, $data);
	}

	function update()
	{
		$data = array(
			//tabel di database => name di form
			'nama_jurusan'	=> $this->input->post('nama_jurusan', TRUE)
		);
		$kode_jurusan	= $this->input->post('kd_jurusan');
		$this->db->where('kd_jurusan', $kode_jurusan);
		$this->db->update($this->table, $data);
	}
}
