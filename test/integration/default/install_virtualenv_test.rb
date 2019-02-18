# # encoding: utf-8

# Inspec test for recipe django::install_virtualenv

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe command ('virtualenv --version') do
  its(:stdout) { should match(/16.4.0/) }
end
