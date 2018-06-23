#!/bin/sh
sudo yum -y install httpd php
sudo service httpd start
sudo chkconfig httpd on
cd /var/www/html
echo "<html>
<body>
<h1>
Servidor:
<?php
echo gethostname();
?>
</h1>
</body>
</html>" > hostname.php
