bash "vsftpdConfig" do

  code <<-EOH
    
    sed -i -e 's/anonymous_enable=YES/anonymous_enable=NO/' /etc/vsftpd/vsftpd.conf
    sed -i -e 's/local_enable=NO/local_enable=YES/' /etc/vsftpd/vsftpd.conf
    sed -i -e 's/#chroot_local_user=YES/chroot_local_user=YES/' /etc/vsftpd/vsftpd.conf
    
    echo "pasv_enable=YES" >> /etc/vsftpd/vsftpd.conf
    echo "pasv_min_port=64000" >> /etc/vsftpd/vsftpd.conf
    echo "pasv_max_port=64321" >> /etc/vsftpd/vsftpd.conf
    echo "port_enable=YES" >> /etc/vsftpd/vsftpd.conf

    service vsftpd restart
    chkconfig vsftpd on

  EOH
end
