
  
apt_package ['maven','leiningen'] do
  action :install
end

directory 'streaming-benchmarks' do
  owner node['streamingExperiment']['user']
  group node['streamingExperiment']['group']
  mode '0775'
  action :create
end

 git 'streaming-benchmarks' do
    repository "git://github.com/ashansa/streaming-benchmarks.git"
    reference "master"
    action :sync
  end

file 'streaming-benchmarks/stream-bench.sh' do
  owner node[:streamingExperiment][:user]
  action :delete
end

template 'streaming-benchmarks/stream-bench.sh' do
    source 'stream-bench.sh.erb'
    owner node[:streamingExperiment][:user]
    group node[:streamingExperiment][:group]
    mode 0775
end

