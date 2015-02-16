bash "httpdConfig" do

  code <<-EOH
    cd /dev/xvd
    mkdir www
    cd www
    mkdir html
    cd /
    sed 's|DocumentRoot "/var/www/html"|DocumentRoot "/dev/xvd/www/html"|' /etc/httpd/conf/httpd.conf
    sed 's|<Directory "/var/www/html">|<Directory "/dev/xvd/www/html"> |' /etc/httpd/conf/httpd.conf
    
    service httpd restart
    
  EOH
end
