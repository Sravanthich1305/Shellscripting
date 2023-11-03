source common.sh
#######frontend script
dnf install nginx -y
status_check()
##copy file on below loc
cp expense.conf /etc/nginx/default.d/expense.conf &
status_check()
##Remove the default content that web server is serving.
rm -rf /usr/share/nginx/html/*
##Download the frontend content
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip
##Extract the frontend content.
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
status_check()
##Start & Enable Nginx service
systemctl enable nginx
systemctl start nginx