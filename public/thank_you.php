<?php require_once("../resources/config.php");?>
<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php

if(isset($_GET['tx'])) {

$amount      = $_GET['amt'];
$currency    = $_GET['cc'];
$transaction = $_GET['tx'];
$status      = $_GET['st'];

$query = query("INSERT INTO orders (order_amount, order_transaction, order_status, order_currency) VALUES 
  ('{$amount}', '{$status }', '{$currency}', '{$transaction}')");

confirm($query);


report();








//session_destroy_();








} else {



  redirect("index.php");
}



?>


    <!-- Page Content -->
    <div class="container">

      <h1 class="text-center" >THANK YOU</h1>

    </div>
    <!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>
