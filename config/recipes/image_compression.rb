namespace :image_compression do
  desc "Install jpegoptim and optipng for image compression"
  task :install do
    run "#{sudo} apt-get -y install jpegoptim"
    run "#{sudo} apt-get -y install optipng"
  end
end
