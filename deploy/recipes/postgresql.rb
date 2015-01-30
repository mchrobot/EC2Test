package 'postgresql' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'postgresql'}
)
action :install
end
