# 'user' and 'group' define the unix user and group, respectively, 
# that the experiment will be excecuted as.
default[:streamingExperiment][:group] = "streamingExperiment"
default[:streamingExperiment][:user] = "streamingExperiment"
default[:streamingExperiment][:load] = "1000"

default[:spark][:home] = "/srv/spark"
default[:spark][:master][:url] = "spark://172.28.128.5:7077"

default[:flink][:home] = "/usr/local/flink"

