bash "mailxconfig" do

  code <<-EOH

    anonymous_enable=NO
    local_enable=YES
    chroot_local_user=YES
    
    service vsftpd restart
    
    chkconfig vsftpd on

    echo "pasv_enable=YES" >> /etc/vsftpd.conf
    echo "pasv_min_port=64000" >> /etc/vsftpd.conf
    echo "pasv_max_port=64321" >> /etc/vsftpd.conf
    echo "port_enable=YES" >> /etc/vsftpd.conf

  EOH
end
