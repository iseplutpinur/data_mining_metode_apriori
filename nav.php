<?php
function getThisFile()
{
  $mentah = explode('/', $_SERVER['SCRIPT_FILENAME']);
  return isset($mentah[count($mentah) - 1]) ? $mentah[count($mentah) - 1] : '';
}

function checkActive($file)
{
  return getThisFile() == $file ? 'active' : '';
}
?>

<li class="nav-item">
  <a class="nav-link <?= checkActive('index.php') ?>" aria-current="page" href="./">Home</a>
</li>


<li class="nav-item">
  <a class="nav-link <?= checkActive('book.php') ?>" href="./book.php">Data Buku</a>
</li>

<li class="nav-item">
  <a class="nav-link <?= checkActive('transaction.php') ?>" href="./transaction.php">Data Transaksi</a>
</li>

<li class="nav-item">
  <a class="nav-link" href="#">Hasil Perhitungan</a>
</li>


<li class="nav-item">
  <a class="nav-link  <?= checkActive('random-data.php') ?>" href="./random-data.php">Generate Random Transaction</a>
</li>
<li class="nav-item">
  <a class="nav-link <?= checkActive('reset.php') ?>" href="./reset.php">Reset Transaction</a>
</li>