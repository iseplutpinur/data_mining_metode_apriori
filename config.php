<?php
// config ==============================================================================================================
$conn = mysqli_connect("localhost", "root", "", "data_mining_toko_buku");

// book ================================================================================================================
$limit = 10;

// transaction =========================================================================================================
$book_limit_per_transaction = 10;
$transaction_total = 200;

// time ================================================================================================================
$day_total = 7; // max 15


// function
function query($query)
{
  global $conn;
  $result = mysqli_query($conn, $query);
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }
  return $rows;
}

$limit = $limit ? " limit $limit" : '';
$books = query("select * from books order by id asc $limit");


function getRandomIdBook()
{
  global $books;

  // generate data
  $final_book_id = [];
  foreach ($books as $id) {
    $final_book_id[] = $id['id'];
  }

  $length = count($final_book_id);
  $rand = rand(0, $length - 1);
  return $final_book_id[$rand];
}

function insertHeader($date)
{
  global $conn;
  $hour = rand(8, 20);
  $minute = rand(0, 59);
  $date = Date("Y-m-$date $hour:$minute:00");
  mysqli_query($conn, "INSERT INTO `transaction` (`id`, `date`)
    VALUES
    (NULL, '$date')");
  return mysqli_insert_id($conn);
}

function insertBody($transaction_id, $book_id)
{
  global $conn;
  return mysqli_query($conn, "INSERT INTO `transaction_detail` (`id`, `transaction_id`, `book_id`)
  VALUES
  (NULL, '$transaction_id', '$book_id')");
}
