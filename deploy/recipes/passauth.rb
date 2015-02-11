bash "passauth" do

  code <<-EOH
    
    sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    
  EOH
end
