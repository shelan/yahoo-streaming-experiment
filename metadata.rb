name             'yahoo-streaming-experiment'
maintainer       "yahoo-streaming-experiment"
maintainer_email "ashansa.perera@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs yahoo-streaming-experiment'
version          "0.1"

recipe            "yahoo-streaming-experiment::install", "Experiment setup for yahoo-streaming-experiment"
recipe            "yahoo-streaming-experiment::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "yahoo-streaming-experiment/group",
:description => "group parameter value",
:type => "string"

attribute "yahoo-streaming-experiment/user",
:description => "user parameter value",
:type => "string"


