<!doctype HTML>
<html>
<head>
    <title>Buku</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="DataTables/datatables.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <h1>Buku_id</h1>
            <?php 

            if(@$_GET['pesan']=="inputBerhasil"){

            ?>
                    <div class="alert alert-success">
                    Penyimpanan Berhasil!
                    </div>
            <?php

            }

            ?>


            <?php 

            if(@$_GET['pesan']=="hapusBerhasil"){

            ?>
                    <div class="alert alert-danger">
                    Data Berhasil Dihapus!
                    </div>
            <?php

            }

            ?>

            <?php 

            if(@$_GET['pesan']=="editBerhasil"){

            ?>
                    <div class="alert alert-success">
                    Perubahan Berhasil!
                    </div>
            <?php

            }

            ?>


        <table id="dataTables" class="table table-bordered">
        <thead>
            <tr>
                <th>Buku_id</th><th>Judul</th><th>Nama_pengarang</th><th>Tahun_terbit</th><th>keterangan</th>
                <th>
                    <a href="input-buku.php">
                        <button class="btn btn-danger glyphicon glyphicon-plus"></button>
                    </a>
                </th>
            </tr> 
        </thead> 
        <tbody>
        <?php

            include "koneksi-UTS.php";
            $sql=$koneksi->query("select * from Buku order by Judul ASC");

            while($row= $sql->fetch_assoc()){
            ?>

            <tr>
                <td><?php echo $row['Buku_id']?></td>
                <td><?php echo $row['Judul']?></td>
                <td><?php echo $row['Nama_pengarang']?></td>
                <td><?php echo $row['Tahun_terbit']?></td>
                <td><?php echo $row['keterangan']?></td>
                <td>

                <a href="edit-buku.php?id=<?php echo $row['Buku_id']?>">
                    <button class="btn btn-xs btn-primary glyphicon glyphicon-edit"></button>
                </a>

                <a href="hapus-buku.php?id=<?php echo $row['Buku_id']?>" onclick=" return confirm('Anda yakin menghapus data?')">
                    <button class="btn btn-xs btn-success glyphicon glyphicon-remove"></button>
                </a>

                </td>
            </tr>

        <?php    
        }
        ?>
        </tbody>
        </table>
        </div>
    </div>
</div>


<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<script src="DataTables/datatables.min.js"></script>

<script type="text/javascript">
 $(document).ready(function(){
     $('#dataTables').DataTable();
 });

</script>

</body>
</html>