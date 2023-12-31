<?php

class Model_tahunakademik extends CI_Model
{

	public $table = "tahun_akademik";

	function getData()
	{
		$this->db->select('id_tahun_akademik,tahun_akademik, is_aktif');
		$query = $this->db->get($this->table);
		return $query->result();
	}

	function save()
	{
		$data = array(
			//tabel di database => name di form
			'tahun_akademik'	=> $this->input->post('tahun_akademik', TRUE),
			'is_aktif'			=> $this->input->post('is_aktif', TRUE)
			//'semester_aktif'	= $this->input->post('semester_aktif', TRUE)
		);
		$this->db->insert($this->table, $data);
	}

	function update()
	{
		if (empty('semester')) {
			$data = array(
				//tabel di database => name di form
				'tahun_akademik'	=> $this->input->post('tahun_akademik', TRUE),
				//'is_aktif'			=> $this->input->post('is_aktif', TRUE)
			);
		} else {
			$data = array(
				//tabel di database => name di form
				'tahun_akademik'	=> $this->input->post('tahun_akademik', TRUE),
				//'is_aktif'			=> $this->input->post('is_aktif', TRUE),
				'semester'			=> $this->input->post('semester', TRUE)
			);
		}
		$id_tahunakademik = $this->input->post('id_tahunakademik');
		$this->db->where('id_tahun_akademik', $id_tahunakademik);
		$this->db->update($this->table, $data);
	}
}
