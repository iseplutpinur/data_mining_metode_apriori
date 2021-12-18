<?php
require_once "./config.php";
$books = query("SELECT * from books left join authors on books.author_id = authors.id $limit");
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
    <h1 class="h5">Book List</h1>
    <table class="table table-hover table-striped">
      <thead>
        <tr>
          <th>No</th>
          <th>BookID</th>
          <th>Nama Buku</th>
          <th>Author</th>
        </tr>
      </thead>
      <tbody>
        <?php $number = 1;
        foreach ($books as $book) : ?>
          <tr>
            <td><?= $number; ?></td>
            <td><?= $book['id']; ?></td>
            <td><?= $book['title']; ?></td>
            <td><?= $book['first_name']; ?></td>
          </tr>
        <?php $number++;
        endforeach; ?>
      </tbody>
    </table>
  </main>
  <script src="./assets/js/bootstrap.min.js"></script>
</body>

</html>