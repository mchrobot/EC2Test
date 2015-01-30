bash "mailxconfig" do

  code <<-EOH
    echo "#set smtp=smtp://smtp.server.tld:port_number" >> /etc/mail.rc
    echo "set smtp=smtp://mailhost.telegraph.co.uk:25" >> /etc/mail.rc
  EOH
end
