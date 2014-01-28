use_inline_resources

action :add do
  sysctl_param "net.ipv4.ip_forward" do
    value 1
    action :save
  end

  modules "iptable_nat"

  iptables_ng_rule "set nat for #{new_resource.wan}" do
    name "#{new_resource.wan}_masquerade"
    table "nat"
    chain "POSTROUTING"
    rule "-o #{new_resource.wan} -j MASQUERADE"
  end

  iptables_ng_rule "set forward for #{new_resource.lan}" do
    name  "#{new_resource.lan}_accept"
    chain "FORWARD" 
    rule "-i #{new_resource.lan} -j ACCEPT"
  end
end
