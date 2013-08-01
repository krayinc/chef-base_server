cookbook_file node[:ssh_permit_remote][:config_path] do
  source 'ssh_config'
  user node[:ssh_permit_remote][:user]
  group node[:ssh_permit_remote][:group]
  mode 00600
end
