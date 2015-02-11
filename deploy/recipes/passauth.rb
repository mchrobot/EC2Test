bash "passauth" do

  code <<-EOH
    
    sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/' sshd_config
    
  EOH
end
