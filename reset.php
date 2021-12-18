<?php
require_once "./config.php";
$result_str = "";
try {
  $result = mysqli_query($conn, "delete from transaction");
  if ($result) {
    $result_str = "Data Transaksi berhasil di reset";
  } else {
    $result_str = "Data Transaksi gagal di reset";
  }
} catch (\Throwable $th) {
  $result_str = "Data Transaksi gagal di reset";
}


?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
  <title>Reset Transaction</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Algoritma Apriori</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="./">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./random-data.php">Generate Random Transaction</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="./reset.php">Reset Transaction</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <main class="container py-2">
    <h1 class="h5"><?= $result_str ?></h1>
  </main>

  <script src="./assets/js/bootstrap.min.js"></script>
</body>

</html>