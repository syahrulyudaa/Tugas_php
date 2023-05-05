<!DOCTYPE html>
<html>

<head>
    <title></title>
</head>

<body>
    <table border="1">
        <tr>
            <td width="100px">Name</td>
            <td width="100px">Tanggal Lahir</td>
            <td width="100px">Umur</td>
            <td width="100px">Alamat</td>
            <td width="100px">Kelas</td>
            <td width="100px">Nilai</td>
            <td width="100px">Hasil</td>
        </tr>

        <?php
            $json_string = file_get_contents('data.json');
            $json = json_decode($json_string, true);

            foreach($json as $data) {
                //umur
                $lahir = new DateTime($data["tanggal_lahir"]);
                $today = new DateTime();
                $umur = $today->diff($lahir);
                $nilai = $data['nilai'];

                //hasil
                if ($nilai >= 85) {
                    $hasil = 'A';
                }elseif ($nilai >= 70) {
                    $hasil = 'B';
                } elseif ($nilai >= 60) {
                    $hasil = 'C';
                } else {
                    $hasil = 'D';
                }
        ?>
        <tr>

            <td><?php echo $data["nama"]; ?></td>
            <td><?php echo $data["tanggal_lahir"]; ?></td>
            <td><?php echo $umur->y; ?></td>
            <td><?php echo $data["alamat"]; ?></td>
            <td><?php echo $data["kelas"]; ?></td>
            <td><?php echo $data["nilai"]; ?></td>
            <td><?php echo $hasil; ?></td>
        </tr>
        <?php
            }
        ?>
    </table>
</body>

</html>