<?php

$Buku_id=$_POST['Buku_id'];
$Judul=$_POST['Judul'];
$Nama_pengarang=$_POST['Nama_pengarang'];
$Tahun_Terbit=$_POST['Tahun_Terbit'];
$keterangan=$_POST['keterangan'];

include "koneksi-UTS.php";

$simpan=$koneksi->query("insert into Buku(Buku_id,Judul,Nama_pengarang,Tahun_terbit,keterangan) 
                        values ('$Buku_id', '$Judul', '$Nama_pengarang', '$Tahun_terbit','$keterangan')");

if($simpan==true){

    header("location:tampil-Buku.php?pesan=inputBerhasil");
} else{
    echo "Error";
}




?>