
bash 'setup' do
  user node[:streamingExperiment][:user]
  group node[:streamingExperiment][:group]
  code <<-EOM
     ./stream-bench.sh SETUP
  EOM
end

