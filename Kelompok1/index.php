<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body class="text-bg-secondary ">
    <div class="container mt-5 text-bg-light ">
        <table class="table table-striped">
            <thead>
                <tr class="text-center">
                    <th scope="col"> ID KOSTUMER</th>
                    <th scope="col">NAMA KOSTUMER</th>
                    <th scope="col">ALAMAT KOSTUMER</th>
                    <th scope="col">AKSI</th>
                </tr>
            </thead>

            <tbody>
                <?php
                include('connect.php');
                $data_mobil = mysqli_query($conn, "SELECT * FROM kostumer");
                while ($kostumer = mysqli_fetch_array($data_mobil)) {
                ?>
                    <tr class="text-center">
                        <td><?php echo $kostumer['id_kostumer'] ?></td>
                        <td><?php echo $kostumer['nama_kostumer'] ?></td>
                        <td><?php echo $kostumer['alamat_kostumer'] ?></td>
                        <td>
                            <button type="button" class="btn btn-primary">Edit</button>
                            <button type="button" class="btn btn-danger">Delete</button>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>