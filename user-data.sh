#!/bin/bash -x

#update os
yum update -y

#install apache server
yum install -y httpd

# create a custom index.html file
chmod -R 777 /var/www/html
echo "<html>
<head>
    <title> Web Server Running in AWS</title>
</head>
<body>
    <h1>This web server is protected by AWS WAF</h1>
</body>
</html>" > /var/www/html/index.html

# start apache server
systemctl start httpd
systemctl enable httpd
