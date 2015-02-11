bash "createAdmins" do

  code <<-EOH
    
    echo wtdatapull ALL=(ALL) NOPASSWD: ALL >> serviceAccounts
    echo shinyuser ALL=(ALL) NOPASSWD: ALL >> serviceAccounts
    echo annualdash ALL=(ALL) NOPASSWD: ALL >> serviceAccounts
    echo tdibudget ALL=(ALL) NOPASSWD: ALL >> serviceAccounts
    
    echo chrobotm ALL=(ALL) NOPASSWD: ALL >> adminAccounts
    echo glancm ALL=(ALL) NOPASSWD: ALL >> adminAccounts
    
  EOH
end
