<?php

include "koneksi-UTS.php";

$id=$_POST['Buku_id'];
$Judul=$_POST['Judul'];
$Nama_pengarang=$_POST['Nama_pengarang'];
$Tahun_Terbit=$_POST['Tahun_Terbit'];
$keterangan=$_POST['keterangan'];

$ubah=$koneksi->query("update Buku set Buku_id='$Buku_id', Judul='$Judul', Nama_pengarang='$Nama_pengarang', Tahun_terbit='$Tahun_terbit', keterangan='$keterangan' where Buku_id='$id'");

if($ubah==true){

    header("location:tampil-Buku.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>