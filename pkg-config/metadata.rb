maintainer        "maxmzd"
maintainer_email  "b@maxmzd.com"
license           "Apache 2.0"
description       "Installs pkg-config"
version           "0.0.0"

recipe "pkg-config", "Installs pkg-config"

depends "apt"

%w{ ubuntu debian }.each do |os|
  supports os
end
