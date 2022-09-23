sudo apt update
sudo apt install nginx -y
cd /var/www
sudo mkdir tutorial
cd tutorial
 
cat > index.html << EOF
<!doctype html>
<html>
<head>
   <meta charset="utf-8">
   <title>Hello, Nginx!</title>
</head>
<body>
   <h1>Hello, Nginx!</h1>
   <p>We have just configured our Nginx web server on Ubuntu Server!</p>
</body>
</html>
EOF
 
cd /etc/nginx/sites-enabled
cat > tutorial << EOF
server {
      listen 81;
      listen [::]:81;
 
      server_name example.ubuntu.com;
 
      root /var/www/tutorial;
      index index.html;
 
      location / {
              try_files $uri $uri/ =404;
      }
}
EOF
sudo service nginx restart


sudo apt update
sudo apt install nginx
cd /var/www
if [ ! -d "tutorial" ]; then
    sudo mkdir tutorial
fi    
cd tutorial
 
sudo dd of=index.html << EOF
<!doctype html>
<html>
<head>
   <meta charset="utf-8">
   <title>Hello, Nginx!</title>
</head>
<body>
   <h1>Hello, Nginx!</h1>
   <p>We have just configured our Nginx web server on Ubuntu Server!</p>
</body>
</html>
EOF
 
cd /etc/nginx/sites-enabled
sudo dd of=tutorial << EOF
server {
      listen 81;
      listen [::]:81;
 
      server_name example.ubuntu.com;
 
      root /var/www/tutorial;
      index index.html;
 
      location / {
              try_files $uri $uri/ =404;
      }
}
EOF
sudo service nginx restart


awk -v d1="2022-02-08 15:04:00" -v d2="2022-02-08 15:08:00" 'd1 < substr($0,2,19) && substr($0,2,19) < d2 || substr($0,2,19) ~ d2' filelog.log

awk -v d1="03/22 08:51:07"  filelog.log

$ while IFS= read -r line; do grep -wF "$abc" hi;

grep abc hi