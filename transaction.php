<?php
require_once "./config.php";
$transactions = query("SELECT * from `transaction` order by `date`");
?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
  <title>List Transaksi</title>
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
          <?php require_once "./nav.php"; ?>
        </ul>
      </div>
    </div>
  </nav>
  <main class="container py-2">
    <?php
    $number_head = 1;
    foreach ($transactions as $transaction) : ?>

      <div class="card my-3">
        <div class="card-header">
          <h1 class="h5">(<?= $number_head; ?>) | <?= $transaction['date']; ?></h1>
        </div>
        <div class="card-body">
          <table class="table table-hover table-striped">
            <thead>
              <tr>
                <th style="width: 10px;">No</th>
                <th style="width: 30px;">BookID</th>
                <th>Nama Buku</th>
              </tr>
            </thead>
            <tbody>
              <?php $number = 1;
              foreach (getTransactionDetail($transaction['id']) as $book) : ?>
                <tr>
                  <td><?= $number; ?></td>
                  <td><?= $book['id']; ?></td>
                  <td><?= $book['title']; ?></td>
                </tr>
              <?php $number++;
              endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    <?php $number_head++;
    endforeach; ?>
  </main>
  <script src="./assets/js/bootstrap.min.js"></script>
</body>

</html>