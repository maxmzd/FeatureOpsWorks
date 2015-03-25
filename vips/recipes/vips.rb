unless ::File.exists?("/usr/local/lib/libvips.so")
  
  # install vips
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    curl -s https://raw.githubusercontent.com/lovell/sharp/master/preinstall.sh | sudo bash -
    EOT
  end

end
