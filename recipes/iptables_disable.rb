service 'iptables' do
  action [:stop, :disable]
  only_if 'chkconfig iptables'
end
