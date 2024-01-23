<?php

$id=$_GET['id'];

include "koneksi-UTS.php";

$hapus=$koneksi->query("delete from Buku where Buku_id='$id'");

if($hapus==true){

    header("location:tampil-Buku.php?pesan=hapusBerhasil");

} else{
    echo "Error";
}


?>