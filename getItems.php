<!DOCTYPE html>
<html>
  <body>
  <?php
  $q = intval($_GET['q']);
  $g=$q+30;
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
  //$con = mysqli_connect("localhost","root","","thecoppermoon") or die("Error".mysqli_error($con));
  $sql="SELECT DName FROM masterdrinks WHERE DKey >= '$q' AND DKey <= '$g'";

  $result = mysqli_query($conn,$sql) or die("Error in Selecting".mysqli_error($conn));

  $emparray = array();

  while($row=mysqli_fetch_assoc($result))
  {
      echo "<a href=# onclick=getData(this.innerHTML);>" .$row['DName']. "</a>";
    //   echo "<br>";
  }
  mysqli_close($conn);
  ?>
  </body>
</html>
