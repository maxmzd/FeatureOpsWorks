unless ::File.exists?("/usr/local/lib/libvips.so")

  # install vips from source
  bash "install vips" do
    cwd "/tmp"
    code <<-EOT
    wget http://www.vips.ecs.soton.ac.uk/supported/7.42/vips-7.42.2.tar.gz
    tar zxf vips-7.42.2.tar.gz
    cd vips-7.42.2
    ./configure
    make
    make install
    ldconfig
    rm -rf vips-7.42.2*
    EOT
  end

end
