name             'streamingExperiment'
maintainer       "streamingExperiment"
maintainer_email "ashansa.perera@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs streamingExperiment'
version          "0.1"

recipe            "streamingExperiment::install", "Experiment setup for streamingExperiment"
recipe            "streamingExperiment::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"
depends "apt"


%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "streamingExperiment/group",
:description => "group parameter value",
:type => "string"

attribute "streamingExperiment/user",
:description => "user parameter value",
:type => "string"

attribute "spark/home",
:description => "path to spark home",
:type => "string"

attribute "spark/master/url",
:description => "spark master url",
:type => "string"

attribute "flink/home",
:description => "path to flink home",
:type => "string"

attribute "streamingExperiment/load",
:description => "number of kafka event to be generated for a second",
:type => "string"


