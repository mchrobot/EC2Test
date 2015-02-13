bash "changeMTU" do

  code <<-EOH
    sudo ip link set dev eth0 mtu 1500
    echo "sudo ip link set dev eth0 mtu 1500" >> /changeMTU.sh
    chmod +x /changeMTU.sh
    echo sh /changeMTU.sh >> /etc/rc.local

  EOH
end
