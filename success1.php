<?php

session_start();

$trxid=$_SESSION['tranxid'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "krishaak";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM success WHERE success.tranx_id='$trxid'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    //echo "name: " . $row["name"]. " - phone: " . $row["phone"]. "txid " . $row["tranx_id"]. "status" . $row["status"]."date" . $row["date"]."amount " . $row["amount"]. "card" . $row["cardtype"]."<br>";
      
      $username=$row["name"];
      $phone=$row["phone"];
      $tid=$row["tranx_id"];
      $tstatus=$row["status"];
      $tdate=$row["date"];
      $tamount=$row["amount"];
      $tcard=$row["cardtype"];
  }
} else {
  echo "0 results";
}

$conn->close();
    
//echo $trxid;

?>
<div>
     <h3> নাম : <?php echo $username; ?></h3>
     <h3> মোবাইল নাম্বার : <?php echo $phone; ?></h3> 
     <h3> লেনদেন নং : <?php echo $tid;  ?></h3>  
     <h3>লেনদেন তারিখ : <?php echo $tdate;  ?></h3>
     <h3>লেনদেন অবস্থা: <?php echo $tstatus;  ?></h3>
     <h3>টাকা : <?php echo $tamount;  ?></h3>
     <h3> কার্ড এর ধরন : <?php echo $tcard;  ?></h3><br>
     <h2>আপনার অর্থ প্রদান সফল হয়েছে।</h2>
     <h2>আমাদের সাথে থাকার জন্য ধন্যবাদ । ভালো থাকবেন ।</h2>
    
<nav class="navbar navbar-light bg-success">
  <form class="container-fluid justify-content-start">
    <a class="btn btn-success" href="index.php">মূলপাতা</a><br>
    <a class="btn btn-success" href="products.php">পিছনে</a>
    
  </form>
</nav>
    
</div>