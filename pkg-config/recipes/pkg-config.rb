unless ::File.exists?("/usr/local/lib/pkgconfig.so")
  
  # install pkg-config
  bash "install pkg-config" do
    cwd "/tmp"
    code <<-EOT
    sudo apt-get install pkg-config
    EOT
  end

end
