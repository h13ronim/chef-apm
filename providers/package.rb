# encoding: utf-8

use_inline_resources if defined?(use_inline_resources)

action :install do
  pkg_id = new_resource.name
  pkg_id += "@#{new_resource.version}" if new_resource.version
  execute "install APM package #{new_resource.name}" do
    command "apm install #{pkg_id}"
    not_if "apm --no-color ls '#{pkg_id}' 2> /dev/null | grep ' #{pkg_id}'"
  end
end

action :uninstall do
  pkg_id = new_resource.name
  pkg_id += "@#{new_resource.version}" if new_resource.version
  execute "uninstall APM package #{new_resource.name}" do
    command "apm uninstall #{pkg_id}"
    only_if "apm --no-color ls '#{pkg_id}' 2> /dev/null | grep ' #{pkg_id}'"
  end
end
