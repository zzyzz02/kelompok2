<section class="content">
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary">
                <div class="box-header  with-border">
                    <h3 class="box-title">Data Tahun Akademik</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <!-- button add -->
                    <?php
                    echo anchor('tahunakademik/add', '<button class="btn bg-navy btn-flat margin">Tambah Data</button>');
                    ?>

                    <table id="mytable" class="table table-striped table-bordered table-hover table-full-width dataTable" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>TAHUN AKADEMIK</th>
                                <th>STATUS</th>
                                <th>AKSI</th>
                            </tr>
                        </thead>
                    </table>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>

<!-- punya lama -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.0/jquery.dataTables.js"></script> -->
<!-- <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.js"></script> -->

<!-- baru tapi cdn -->
<!-- <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"> -->

<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<script>
    $(document).ready(function() {
        var t = $('#mytable').DataTable({
            "ajax": '<?php echo site_url('tahunakademik/data'); ?>',
            "order": [
                [1, 'desc']
            ],
            "columns": [{
                    "data": "null",
                    "render": function(data, type, row, meta) {
                        return meta.row + 1;
                    }
                },
                {
                    "data": "tahun_akademik"
                },
                {
                    "data": "null",
                    "render": function(data, type, row) {
                        let is_aktif = {
                            'Y': 'Aktif',
                            'N': 'Tidak Aktif'
                        }
                        return is_aktif[row.is_aktif]
                    }
                },

                {
                    "data": "null",
                    "render": function(data, type, row) {
                        return '<a class="btn btn-xs bg-orange" href="<?php echo site_url("tahunakademik/aktif/"); ?>' + row.id_tahun_akademik + '"> Aktifkan </a>  <a class="btn btn-xs btn-primary" href="<?php echo site_url("tahunakademik/edit/"); ?>' + row.id_tahun_akademik + '"><i class="fa-regular fa-pen-to-square"></i></a> <a class="btn btn-xs btn-danger" href="<?php echo site_url("tahunakademik/delete/"); ?>' + row.id_tahun_akademik + '"> <i class="fa-solid fa-trash"></i></a>';
                    }
                }
            ]
        });


    });
</script>