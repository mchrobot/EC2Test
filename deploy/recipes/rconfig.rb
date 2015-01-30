bash "rconfig" do
  
  code <<-EOH
    echo www-port=80 >> /etc/rstudio/rserver.conf
    echo rsession-ld-library-path=/usr/lib64/R/lib >> /etc/rstudio/rserver.conf
  EOH
end
