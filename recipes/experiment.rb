
script 'run_experiment' do
  cwd "/tmp"
  user node['streamingExperiment']['user']
  group node['streamingExperiment']['group']
  interpreter "bash"
user "root"
  code <<-EOM
    echo "yahoo streaming benchmark"
    apt-get install maven -y
    apt-get install leiningen -y
  EOM
end

 git "/tmp" do
    repository "git://github.com/ashansa/streaming-benchmarks.git"
    reference "master"
    action :sync
  end

