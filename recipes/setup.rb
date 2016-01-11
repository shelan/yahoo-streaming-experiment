
bash 'setup' do
  cwd "/tmp/streaming-benchmarks"
  code <<-EOM
    sh /tmp/streaming-benchmarks/stream-bench.sh SETUP
  EOM
end

