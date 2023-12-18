<section class="content">
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary">
                <div class="box-header  with-border">
                    <h3 class="box-title">Data Siswa</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <!-- button add -->
                    <?php
                    echo anchor('siswa/add', '<button class="btn bg-navy btn-flat margin">Tambah Data</button>');
                    ?>

                    <table id="mytable" class="table table-striped table-bordered table-hover table-full-width dataTable" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>FOTO</th>
                                <th>NIM</th>
                                <th>NAMA</th>
                                <th>GENDER</th>
                                <th>TEMPAT LAHIR</th>
                                <th>TANGGAL LAHIR</th>
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
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />

<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        var t = $('#mytable').DataTable({
            "ajax": '<?php echo site_url('siswa/data'); ?>',
            "order": [
                [2, 'asc']
            ],
            "columns": [{
                    "data": "null",
                    "render": function(data, type, row, meta) {
                        return meta.row + 1;
                    }
                },
                {
                    "data": "null",
                    "render": function(data, type, row) {
                        return '<img src="<?php echo base_url(); ?>uploads/' + row.foto + '" width="20px" height="20px">';
                    }
                },
                {
                    "data": "nim"
                },
                {
                    "data": "nama"
                },
                {
                    "data": "null",
                    "render": function(data, type, row) {
                        let gender = {
                            'L': 'Pria',
                            'P': 'Wanita'
                        }
                        return gender[row.gender]
                    }
                },
                {
                    "data": "tempat_lahir"
                },
                {
                    "data": "tanggal_lahir"
                },
                {
                    "data": "null",
                    "render": function(data, type, row) {
                        return '<a class="btn btn-primary" href="<?php echo site_url("siswa/edit/"); ?>' + row.nim + '"><i class="fa-regular fa-pen-to-square"></i></a> <a class="btn btn-danger" href="<?php echo site_url("siswa/delete/"); ?>' + row.nim + '"> <i class="fa-solid fa-trash"></i></a>';
                    }
                }
            ]
        });


    });
</script>