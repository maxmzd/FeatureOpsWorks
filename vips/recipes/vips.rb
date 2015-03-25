unless ::File.exists?("/usr/local/lib/libvips.so")
  
  # install vips
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    sudo apt-get install libvips libvips-tools
    Y
    EOT
  end

end
