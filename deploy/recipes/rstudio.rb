bash "download_r" do
  
  code <<-EOH
    wget http://download2.rstudio.org/rstudio-server-0.98.1091-x86_64.rpm
    cd /
  EOH
end
  
rpm_package "rstudio-server-0.98.1091-x86_64" do
  action :install
  options "--nogpgcheck"
end
