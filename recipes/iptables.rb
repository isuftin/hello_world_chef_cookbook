#
# Cookbook:: hello_world
# Recipe:: iptables

node['hello_world']['iptables']['rules'].map do |rule_name, rule_body|
  iptables_rule rule_name do
    lines [rule_body].flatten.join("\n")
  end
end
