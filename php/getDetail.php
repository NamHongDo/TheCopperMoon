<!DOCTYPE html>
<html>
  <body>
  <?php
  $q =  $_REQUEST["q"];

  //$q="Pumpkin";
  //echo $q;
  try {
      $conn = new PDO("sqlsrv:server = tcp:coppermoon.database.windows.net,1433; Database = thecoppermoon", "namdo", "Qu3nm4tr0i");
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }
  catch (PDOException $e) {
      print("Error connecting to SQL Server.");
      die(print_r($e));
  }

  // SQL Server Extension Sample Code:
  $connectionInfo = array("UID" => "namdo@coppermoon", "pwd" => "Qu3nm4tr0i", "Database" => "thecoppermoon", "LoginTimeout" => 30, "Encrypt" => 1, "TrustServerCertificate" => 0);
  $serverName = "tcp:coppermoon.database.windows.net,1433";

  $conn = sqlsrv_connect($serverName, $connectionInfo);

  $sql="SELECT * FROM masterdrinks, Ddescription WHERE DName='".$q."' AND DKey=MKey" ;
  $result = mysqli_query($conn,$sql) or die("Error in Selecting".mysqli_error($conn));
  $row=mysqli_fetch_assoc($result);
  $description=$row['Description'];

  $sql="SELECT * FROM masterdrinks, price WHERE DName='".$q."' AND DKey=PKey" ;
  $result = mysqli_query($conn,$sql) or die("Error in Selecting".mysqli_error($conn));

  $priceArray = array();
  while($row=mysqli_fetch_assoc($result))
  {
    array_push($priceArray ,$row['PSmall']);
    array_push($priceArray ,$row['Pmedium']);
    array_push($priceArray ,$row['PLarge']);
  }

  echo "<div class='nameDescription'>".$q."</div>";
  echo "<br>";
  echo "<br>";
  echo "<br>";
  echo "<div class='smlDescription'>".$description."</div>";
  echo "<br>";
  echo "<div class='smlPrice'>".$priceArray[0]. "&nbsp;&nbsp;.&nbsp;&nbsp;".$priceArray[1]."&nbsp;&nbsp;.&nbsp;&nbsp;".$priceArray[2]."</div>";

  mysqli_close($conn);
  ?>
  </body>
</html>
