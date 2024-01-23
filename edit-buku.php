<!doctype HTML>
<html>
<head>
    <title>Form Edit buku</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="proses-edit-buku.php" method="POST">
                <?php
                $id=$_GET['id'];
                include "koneksi-UTS.php";
                $tampil=$koneksi->query("select * from buku where  Buku_id='$id'");
                $row=$tampil->fetch_assoc();
                ?>
                    <div class="form-group">
                        <label for="Buku_id">Buku_id</label>
                        <input type="hidden" name="Buku_id" value="<?php echo $row['Buku_id']?>" class="form-control">
                        <input type="number" name="Buku_id" value="<?php echo $row['Buku_id']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="Judul">Judul</label>
                        <input type="text" name="Judul" value="<?php echo $row['Judul']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="Nama_pengarang">Nama_pengarang</label>
                        <input type="text" name="Nama_pengarang" value="<?php echo $row['Nama_pengarang']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="Tahun_terbit">Tahun terbit</label>
                        <input type="text" name="Tahun terbit" value="<?php echo $row['Tahun terbit']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="keterangan">keterangan</label>
                        <textarea name="keterangan" class="form-control"><?php echo $row['keterangan']?></textarea>
                    </div>

                    <input type="submit" name="kirim" value="UBAH" class="btn btn-info">
                    <input type="reset" name="kosongkan" value="Kosongkan" class="btn btn-danger">
                </form>
            </div>
        </div>
    </div>

<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>