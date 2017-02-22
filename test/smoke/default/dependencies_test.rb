

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe bash('curl -v -s localhost:80 1> /dev/null') do
  its('stderr') { should match /403/i}
end

describe bash('curl -v -s localhost:80 1> /dev/null') do
  its('stdout') { should eq ''}
end

describe bash('curl -v -s localhost:80/hello_world.html') do
  its('stdout') { should match /Someone/i}
end
