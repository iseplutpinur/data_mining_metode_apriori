<?php
require_once "./config.php";
$total_transaction = 0;
$total_transaction_detail = 0;
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
  echo "Build random data success <br>";
  echo "$total_transaction Transaction added and $total_transaction_detail Transaction detail added";
} catch (\Throwable $th) {
  echo "Build random data failed";
}
