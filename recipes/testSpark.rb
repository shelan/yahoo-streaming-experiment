bash 'run_spark_test' do
  cwd "/tmp/streaming-benchmarks"
  user node[:streamingExperiment][:user]
  group node[:streamingExperiment][:group]
  code <<-EOM
    ./stream-bench.sh SPARK_TEST
  EOM
end
