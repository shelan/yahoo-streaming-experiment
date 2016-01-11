
script 'run_experiment' do
  cwd "/tmp"
  user node['streamingExperiment']['user']
  group node['streamingExperiment']['group']
  interpreter "bash"
  code <<-EOM
echo "yahoo streaming benchmark"
sudo apt-get install maven
  EOM
end

