require 'redmine'


require File.expand_path('lib/ldap_sync/core_ext', __dir__)
require File.expand_path('lib/ldap_sync/infectors', __dir__)
require File.expand_path('lib/ldap_sync/hooks', __dir__)

Redmine::Plugin.register :redmine_ldap_sync do
  name 'Redmine LDAP Sync'
  author 'Ricardo Santos'
  author_url 'https://github.com/thorin'
  description 'Syncs users and groups with ldap'
  url 'https://github.com/thorin/redmine_ldap_sync'
  version '2.1.1.devel'
  requires_redmine :version_or_higher => '5.0.0'

  settings :default => HashWithIndifferentAccess.new()
  menu :admin_menu, :ldap_sync, { :controller => 'ldap_settings', :action => 'index' }, :caption => :label_ldap_synchronization,
                    :html => {:class => 'icon icon-ldap-sync'}
end
