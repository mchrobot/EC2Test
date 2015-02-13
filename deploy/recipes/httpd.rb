package 'httpd' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'httpd'}
)
action :install
end
