<style>
    .table {
        border: 1px solid black !important;
        border-collapse: collapse;
        width: 100%;
    }

    .table th {
        border: 1px solid black !important;
        padding: 5px;
        font-weight: bold;
        text-align: center;
    }

    .table td {
        border: 1px solid black !important;
        padding: 5px;
        vertical-align: top;
    }
</style>


<table class="table table-bordered">
    <thead>
        <tr>
            <th class="text-center">NO</th>
            <th class="text-left">MATA PELAJARAN</th>
            <th class="text-center">GURU</th>
            <th class="text-center">RUANGAN</th>
            <th class="text-center">HARI</th>
            <th class="text-center">JAM</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        foreach ($data_jadwal as $k) { ?>
            <tr>
                <td class="text-center"><?php echo $no++; ?></td>
                <td class="text-left"><?php echo $k["nama_mapel"]; ?></td>
                <td class="text-center"><?php echo $k["nama_guru"]; ?></td>
                <td class="text-center"><?php echo $k["nama_ruangan"]; ?></td>
                <td class="text-center"><?php echo $k["hari"]; ?></td>
                <td class="text-center"><?php echo $k["jam"]; ?></td>
            </tr>
        <?php }
        ?>

    </tbody>

</table>

<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<script>
    $(document).ready(function() {
        window.print();
    });
</script>