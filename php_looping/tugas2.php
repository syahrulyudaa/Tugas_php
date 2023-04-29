<?php

$tinggi = 10; // nilai tinggi segitiga

for ($i = 1; $i <= $tinggi; $i++) { // looping untuk setiap baris pada segitiga
    for ($j = $i; $j <= $tinggi; $j++) { // looping untuk setiap kolom pada baris tertentu
        echo "* "; // menampilkan karakter "*" pada kolom tersebut
    }
    echo "<br>"; // menambahkan baris baru setelah selesai menampilkan karakter pada setiap kolom
}
?>
