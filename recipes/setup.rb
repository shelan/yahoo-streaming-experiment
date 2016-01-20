
bash 'setup' do
  user node[:streamingExperiment][:user]
  group node[:streamingExperiment][:group]
  cwd "/tmp/streaming-benchmarks"
  code <<-EOM
     ./stream-bench.sh SETUP
  EOM
end

