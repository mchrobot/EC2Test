package 'epel-release' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'epel-release'}
)
action :install
end
