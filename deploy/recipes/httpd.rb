package 'httpd' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'httpd'}
)
action :install
end


bash "httpdService" do
  
  code <<-EOH
    service httpd start
    chkconfig httpd on
  EOH
end
