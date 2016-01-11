
script 'run_experiment' do
  cwd "/tmp"
  user node['streamingExperiment']['user']
  group node['streamingExperiment']['group']
  interpreter "bash"
user "root"
  code <<-EOM
echo "yahoo streaming benchmark"
apt-get install maven -y
  EOM
end

