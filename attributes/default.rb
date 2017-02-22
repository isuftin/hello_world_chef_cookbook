default['hello_world']['iptables']['rules']['apache_http'] = '-A FWR -p tcp -m tcp --dport 80 -j ACCEPT'
default['hello_world']['iptables']['rules']['apache_https'] = '-A FWR -p tcp -m tcp --dport 443 -j ACCEPT'

default['hello_world']['content']['author_name'] = 'Ivan Suftin'
