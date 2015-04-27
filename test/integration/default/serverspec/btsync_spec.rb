require 'serverspec'

set :backend, :exec

describe service('btsync') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8888) do
  it { should be_listening.with('tcp') }
end
