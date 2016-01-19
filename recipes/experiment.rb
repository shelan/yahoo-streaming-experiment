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
    mkdir -p /tmp/streaming-benchmarks
  EOM
end

 git "/tmp/streaming-benchmarks" do
    repository "git://github.com/ashansa/streaming-benchmarks.git"
    reference "master"
    action :sync
  end

file "/tmp/streaming-benchmarks/stream-bench.sh" do
  owner node[:streamingExperiment][:user]
  action :delete
end

template "/tmp/streaming-benchmarks/stream-bench.sh" do
    source "stream-bench.sh.erb"
    owner node[:streamingExperiment][:user]
    group node[:streamingExperiment][:group]
    mode 0775
end

