# # encoding: utf-8

# Inspec test for recipe django::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# This is an example test, replace it with your own test.
describe package('python3-pip') do
  it { should  be_installed }
end
describe command ('django-admin --version') do
  its(:stdout) { should match(/1.7.5/) }
end
