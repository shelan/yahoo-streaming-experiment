
script 'run_experiment' do
  cwd "/tmp"
  user node['yahoo-streaming-experiment']['user']
  group node['yahoo-streaming-experiment']['group']
  interpreter "bash"
  code <<-EOM
echo "yahoo streaming benchmark"
sudo apt-get install maven
  EOM
end

