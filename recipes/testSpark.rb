bash 'setup' do
  cwd "/tmp/streaming-benchmarks"
  code <<-EOM
    sh /tmp/streaming-benchmarks/stream-bench.sh SPARK_TEST
  EOM
end