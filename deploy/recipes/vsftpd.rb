package 'vsftpd' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'vsftpd'}
)
action :install
end
