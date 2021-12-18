<?php
require_once "./config.php";
$total_transaction = 0;
$total_transaction_detail = 0;
$result_str = "";
try {
  for ($day = 1; $day <= $day_total; $day++) {
    // get transaction per day
    $mod = ($day == $day_total ? ($transaction_total % $day_total) : 0);
    $transaction_per_day = floor($transaction_total / $day_total) + $mod;

    // execute transaction
    for ($i = 1; $i <= $transaction_per_day; $i++) {

      // get transaction header
      $header = insertHeader($day);
      $book_sum = rand(1, $book_limit_per_transaction);

      // execute transaction detail
      for ($j = 1; $j <=  $book_sum; $j++) {
        $book = getRandomIdBook();
        insertBody($header, $book);
        $total_transaction_detail++;
      }
      $total_transaction++;
    }
  }
  $result_str = "Build random data success <br>";
  $result_str = "$total_transaction Transaction added and $total_transaction_detail Transaction detail added";
} catch (\Throwable $th) {
  $result_str = "Build random data failed";
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
          <?php require_once "./nav.php"; ?>
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