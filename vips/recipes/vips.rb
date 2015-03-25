unless ::File.exists?("/usr/local/lib/libvips.so")
  
  # install vips
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    sudo apt-get install libvips-tools libvips-devel
    EOT
  end

end
