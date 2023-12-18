<?php

class Kurikulum extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_kurikulum');
	}


	function data()
	{
		$data = $this->model_kurikulum->getData();
		echo json_encode(array('data' => $data));
	}



	function index()
	{
		$this->template->load('template', 'kurikulum/view');
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			$this->model_kurikulum->save();
			redirect('kurikulum');
		} else {
			$this->template->load('template', 'kurikulum/add');
		}
	}

	function edit()
	{
		if (isset($_POST['submit'])) {
			$this->model_kurikulum->update();
			redirect('kurikulum');
		} else {
			$id_kurikulum 		= $this->uri->segment(3);
			$data['kurikulum']	= $this->db->get_where('kurikulum', array('id_kurikulum' => $id_kurikulum))->row_array();
			$this->template->load('template', 'kurikulum/edit', $data);
		}
	}

	function delete()
	{
		$id_kurikulum = $this->uri->segment(3);
		if (!empty($id_kurikulum)) {
			$this->db->where('id_kurikulum', $id_kurikulum);
			$this->db->delete('kurikulum');
		}
		redirect('kurikulum');
	}

	function detail()
	{
		$this->template->load('template', 'kurikulum/detail');
	}

	function dataKurikulumDetail()
	{
		$jurusan 		= $_GET['kd_jurusan'];
		$kode_tingkatan = $_GET['kd_tingkatan'];
		$kurikulum 		= $_GET['kurikulumnya'];
		echo "<table class='table table-striped table-bordered table-hover table-full-width dataTable'>
                    <thead>
                        <tr>
                            <th class='text-center'>NO</th>
                            <th class='text-center'>KODE MAPEL</th>
                            <th class='text-center'>NAMA MATA PELAJARAN</th>
                            <th></th>
                        </tr>
                    </thead>";

		$sql_detailkurikulum =  "SELECT tkd.id_kurikulum_detail, tkd.id_kurikulum, tj.nama_jurusan, ttk.nama_tingkatan, 
  									tm.kd_mapel, tm.nama_mapel 
  									FROM kurikulum_detail AS tkd, kurikulum AS tk, mapel AS tm, jurusan AS tj, tingkatan_kelas AS ttk 
  									WHERE tkd.id_kurikulum = tk.id_kurikulum AND tkd.kd_mapel = tm.kd_mapel AND tkd.kd_jurusan = tj.kd_jurusan AND tkd.kd_tingkatan = ttk.kd_tingkatan AND tkd.kd_jurusan = '$jurusan' AND tkd.kd_tingkatan = $kode_tingkatan AND tkd.id_kurikulum = $kurikulum";
		$detail_kurikulum 	 =  $this->db->query($sql_detailkurikulum)->result();
		$no = 1;

		foreach ($detail_kurikulum as $row) {
			echo "<tr>
			    		<td>$no</td>
			    		<td>$row->kd_mapel</td>
			    		<td>$row->nama_mapel</td>
			    		<td>" . anchor('kurikulum/delete_detail/' . $row->id_kurikulum_detail . '/' . $row->id_kurikulum, '<i class="fa fa-times fa fa-white"></i>', 'class="btn btn-xs btn-danger" data-placement="top" title="Delete"') . "</td>
			    		
			    	 </tr>";
			$no++;
		}

		echo  "</table>";
	}

	function add_detail()
	{
		if (isset($_POST['submit'])) {
			$this->model_kurikulum->save_detail();
			redirect('kurikulum/detail/' . $this->input->post('kurikulum'));
		} else {
			$this->template->load('template', 'kurikulum/add_detail');
		}
	}

	function delete_detail()
	{
		$id_kurikulumdetail = $this->uri->segment(3);
		$id_kurikulum 		= $this->uri->segment(4);
		if (!empty($id_kurikulumdetail)) {
			$this->db->where('id_kurikulum_detail', $id_kurikulumdetail);
			$this->db->delete('kurikulum_detail');
		}
		redirect('kurikulum/detail/' . $id_kurikulum);
	}
}
