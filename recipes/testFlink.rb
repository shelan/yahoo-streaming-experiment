bash 'run_flink_test' do
  cwd "/tmp/streaming-benchmarks"
  code <<-EOM
    sh /tmp/streaming-benchmarks/stream-bench.sh FLINK_TEST
  EOM
end