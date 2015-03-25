unless ::File.exists?("/usr/local/lib/libvips.so")
  
  # install vips
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    sudo apt-get -y install libvips libvips-tools
    EOT
  end

end
