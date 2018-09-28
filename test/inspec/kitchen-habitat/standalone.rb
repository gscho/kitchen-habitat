describe command('hab svc status') do
  its('stdout.strip') { should match %r(kitchen-habitat/standalone) }
end

describe command('/bin/hab sup -h') do
  its(:stdout) { should match(/The Habitat Supervisor/) }
end

describe file('/bin/hab') do
  it { should exist }
  it { should be_symlink }
end

describe directory('/hab/pkgs/kitchen-habitat/standalone') do
  it { should exist }
end

describe file('/hab/sup/default/specs/standalone.spec') do
  it { should exist }
  its(:content) { should match(/^desired_state = "up"$/) }
end