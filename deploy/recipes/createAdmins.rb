bash "createAdmins" do

  code <<-EOH
    
    echo "wtdatapull ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/serviceAccounts
    echo "shinyuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/serviceAccounts
    echo "annualdash ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/serviceAccounts
    echo "tdibudget ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/serviceAccounts
    
    echo "chrobotm ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/adminAccounts
    echo "glancm ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/adminAccounts
    
  EOH
end
