bash "download_r" do
  
  code <<-EOH
    wget https://github.com/mchrobot/EC2Test/blob/master/rstudio-server-0.98.1091-x86_64.rpm
  EOH
end
  
rpm_package "rstudio-server-0.98.1091-x86_64" do
  action :install
  options "--nogpgcheck"
end
