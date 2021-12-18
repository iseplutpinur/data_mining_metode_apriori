<?php
require_once "./config.php";
// query
$books = query("SELECT * from books $limit");
$transactions = query("SELECT * from `transaction` order by `date`");


// books
$books_result = [];
foreach ($books as $book) {
  $books_result[] = array_merge(
    $book,
    ['transaction' => Step1($book['id'])]
  );
}

$book_step2 = [];
foreach ($books_result as $book) {
  # code...
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
  <title>Book List</title>
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

    <!-- transaksi -->
    <h1 class="h5">Tabel Transaksi</h1>
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th style="width: 10px;">No</th>
          <th>ID Transaksi</th>
          <th>Barang Yang Dibeli</th>
        </tr>
      </thead>
      <tbody>
        <?php $number = 1;
        foreach ($transactions as $transaction) : ?>
          <tr>
            <td><?= $number; ?></td>
            <td><?= $transaction['id']; ?></td>
            <td>
              <?php foreach (getTransactionDetail($transaction['id']) as $key => $book) {
                echo (($key != 0) ? ", " : "") . $book['id'];
              } ?>
            </td>
          </tr>
        <?php $number++;
        endforeach; ?>
      </tbody>
    </table>
    <br>

    <!-- langkah 1 -->
    <h1 class="h5">Langkah 1</h1>
    <p>Hitung banyaknya transaksi untuk setiap item. </p>
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>No</th>
          <th>BookID</th>
          <th>Nama Buku</th>
          <th>Banyaknya Transaksi</th>
        </tr>
      </thead>
      <tbody>
        <?php $number = 1;
        foreach ($books_result as $book) : ?>
          <tr>
            <td><?= $number; ?></td>
            <td><?= $book['id']; ?></td>
            <td><?= $book['title']; ?></td>
            <td><?= $book['transaction']; ?></td>
          </tr>
        <?php $number++;
        endforeach; ?>
      </tbody>
    </table>
  </main>
  <script src="./assets/js/bootstrap.min.js"></script>
</body>

</html>