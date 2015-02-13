package 'php' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'php'}
)
action :install
end
