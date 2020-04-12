# InSpec test for recipe python_project::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe package('python3.7') do
  it { should be_installed }
  its('version'){ should cmp > '3.*' }
end

describe package('python3-pip') do
  it { should be_installed }
end

describe directory '/home/ubuntu/app' do
  it {should exist}
end

describe directory '/home/vagrant/Downloads' do
  it {should exist}
end

describe file('/usr/local/lib/python3.6/dist-packages/atomicwrites') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/attrs-19.1.0.dist-info') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/bs4') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/certifi') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/idna') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/importlib_metadata') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/more_itertools') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/packaging') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pluggy') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pyparsing.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pytest.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/requests') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/six.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/soupsieve') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/urllib3') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/wcwidth') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/zipp.py') do
  it { should exist }
end
