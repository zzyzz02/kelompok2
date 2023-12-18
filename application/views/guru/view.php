<section class="content">
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary">
                <div class="box-header  with-border">
                    <h3 class="box-title">Data Guru</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <!-- button add -->
                    <?php
                    echo anchor('guru/add', '<button class="btn bg-navy btn-flat margin">Tambah Data</button>');
                    ?>

                    <table id="mytable" class="table table-striped table-bordered table-hover table-full-width dataTable" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>NUPTK</th>
                                <th>NAMA GURU</th>
                                <th>GENDER</th>
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
        // Inisialisasi DataTable
        var table = $('#mytable').DataTable({
            "ajax": "<?php echo site_url('guru/data'); ?>",
            "columns": [{
                    "data": "null",
                    "render": function(data, type, row, meta) {
                        return meta.row + 1;
                    }
                },
                {
                    "data": "nuptk"
                },
                {
                    "data": "nama_guru"
                },
                {
                    "data": "null",
                    "render": function(data, type, row) {
                        let gender = {
                            'P': 'Pria',
                            'W': 'Wanita'
                        }
                        return gender[row.gender]
                    }
                },
                {
                    "data": null,
                    "render": function(data, type, row) {
                        return '<a class="btn btn-primary" href="<?php echo site_url("guru/edit/"); ?>' + row.id_guru + '"><i class="fa-regular fa-pen-to-square"></i></a> <a class="btn btn-danger" href="<?php echo site_url("guru/delete/"); ?>' + row.id_guru + '"> <i class="fa-solid fa-trash"></i></a>';
                    }
                }
            ]
        });
    });
</script>