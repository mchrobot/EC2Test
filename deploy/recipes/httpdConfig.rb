bash "httpdConfig" do

  code <<-EOH
    cd /dev/xvd
    mkdir www
    cd www
    mkdir html
    sed -i -e 's/DocumentRoot "/var/www/html"/DocumentRoot "/dev/xvd/www/html"/' /etc/httpd/conf/httpd.conf
    
    service httpd restart
    
  EOH
end
