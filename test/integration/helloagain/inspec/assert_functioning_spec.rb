
describe command('curl -s hello.computers.biz:1234 | grep hello') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/hello/) }
end
