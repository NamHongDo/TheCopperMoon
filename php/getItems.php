<!DOCTYPE html>
<html>
  <body>
  <?php
  $q = intval($_GET['q']);
  $g=$q+30;
  $con = mysqli_connect("localhost","root","","thecoppermoon") or die("Error".mysqli_error($con));
  $sql="SELECT DName FROM masterdrinks WHERE DKey >= '$q' AND DKey <= '$g'";

  $result = mysqli_query($con,$sql) or die("Error in Selecting".mysqli_error($con));

  $emparray = array();

  while($row=mysqli_fetch_assoc($result))
  {
      echo "<a href=# onclick=getData(this.innerHTML);>" .$row['DName']. "</a>";
    //   echo "<br>";
  }
  mysqli_close($con);
  ?>
  </body>
</html>
