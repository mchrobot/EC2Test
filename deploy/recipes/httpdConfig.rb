bash "httpdConfig" do

  code <<-EOH
    cd /dev/xvd
    mkdir www
    cd www
    mkdir html
    cd /
    sed -e -i 's|/var/www/html|/dev/xvd/www/html|' /etc/httpd/conf/httpd.conf
    
    
    service httpd restart
    
  EOH
end
