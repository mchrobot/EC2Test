package 'R' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'R'}
)
action :install
end
