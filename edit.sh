export ORG=$(pwd)
nano /etc/nginx/nginx.conf
rc-service nginx restart
cd ./nginx-config
git commit -a
git push
cd $ORG
