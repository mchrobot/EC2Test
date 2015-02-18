bash "httpdConfig" do

  code <<-EOH
    cd /dev/xvd
    mkdir www
    cd www
    mkdir html
    cd /dev/xvd/www
    chmod 775 html
    cd /
    sed -i -e 's|/var/www/html|/dev/xvd/www/html|' /etc/httpd/conf/httpd.conf
    
    
    service httpd restart
    
  EOH
end
