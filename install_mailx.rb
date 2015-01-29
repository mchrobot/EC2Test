package 'mailx' do
package_name value_for_platform(
['centos','redhat','fedora','amazon'] => {'default' => 'mailx'}
)
action :install
end
