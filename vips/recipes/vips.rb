unless ::File.exists?("/usr/local/lib/libvips.so")
  
  # install vips
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    curl -s https://raw.githubusercontent.com/maxmzd/FeatureOpsWorks/master/preinstall-vips.sh | sudo bash -
    EOT
  end

end
