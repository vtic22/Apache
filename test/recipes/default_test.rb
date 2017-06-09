# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should_not be_listening }
end

# fichero para definir las Pruebas a pasar por los test

describe package ('tree') do
  it { should be_installed }
end
