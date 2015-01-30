bash "download_r" do
  
  code <<-EOH
    wget http://download2.rstudio.org/rstudio-server-0.98.1091-x86_64.rpm
    cwd /
    cd /
    yum install --nogpgcheck rstudio-server-0.98.1091-x86_64.rpm
  EOH
end

