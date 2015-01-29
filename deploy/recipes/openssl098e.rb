package 'openssl098e' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'openssl098e'}
)
action :install
end
