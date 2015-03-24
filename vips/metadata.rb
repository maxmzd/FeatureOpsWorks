maintainer        "maxmzd"
maintainer_email  "b@maxmzd.com"
license           "Apache 2.0"
description       "Installs libvips"
version           "0.0.0"

recipe "vips", "Installs libvips"

depends "apt"

%w{ ubuntu debian }.each do |os|
  supports os
end
