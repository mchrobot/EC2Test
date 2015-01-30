package 'mc' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'mc'}
)
action :install
end
