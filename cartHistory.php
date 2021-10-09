<?php

session_start();

$cphone=$_SESSION['phone'];

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

$sql = "SELECT * FROM success WHERE success.phone='$cphone'";
$result = $conn->query($sql);

//if ($result->num_rows > 0) {
  // output data of each row
 // while($row = $result->fetch_assoc()) {
   // echo "name: " . $row["name"]. " - phone: " . $row["phone"]. "-  txid: " . $row["tranx_id"]. "- status:" . $row["status"]."- date:" . $row["date"]."- amount: " . $row["amount"]. "- card:" . $row["cardtype"]."<br>";

//  }
//} 

?>
<html>
    <head>
        <style>
            th,td{
                border: 1px solid black;
            }
        .table {
          background-color: greenyellow;
          color: white;
          border: 2px solid black;
          margin: 20px;
          padding: 20px;
        }
        </style>
</head>
<div class="table">
    <table>
     <tr>
         <th>আপনার-নাম</th>
         <th>আপনার ফোন-নম্বর</th>
         <th>লেনদেন-নং</th>
         <th>লেনদেন-তারিখ</th>
         <th>লেনদেন অবস্থা </th>
         <th>টাকা</th>
         <th>কার্ড এর ধরন</th>
     </tr>
     <?php
         if (mysqli_num_rows($result)>0) {
         // output data of each row
         while($row = mysqli_fetch_array($result)) {
          ?>
            <tr>
                <td><?php echo $row["name"];?></td>
                <td><?php echo $row["phone"];?></td>
                <td><?php echo $row["tranx_id"];?></td>
                <td><?php echo $row["date"];?></td>
                <td><?php echo $row["status"];?></td>
                <td><?php echo $row["amount"];?></td>
                <td><?php echo $row["cardtype"];?></td>
            </tr>     
          <?php
          
             }
         }
       else {
         echo "0 results";
         }

$conn->close();
       ?>
    </table>
</div>
<nav class="navbar navbar-light bg-success">
  <form class="container-fluid justify-content-start">
    <a class="btn btn-success" href="index.php">মূলপাতা</a><br>
    <a class="btn btn-success" href="products.php">পিছনে</a>
    
  </form>
</nav>

</html>    