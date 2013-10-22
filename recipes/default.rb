# We assume the setup is correct if the expected environment variables are set to
# en_US.UTF-8
locale = 'en_US.UTF-8'
unless ENV["LANGUAGE"] == locale &&
       ENV["LANG"] == locale &&
       ENV["LC_ALL"] == locale

  ENV["LANGUAGE"] = locale
  ENV["LANG"] = locale
  ENV["LC_ALL"] = locale

  template "/etc/profile.d/lang.sh" do
    source  "lang.sh.erb"
    mode "0644"
  end

  execute "locale-gen" do
    command "locale-gen en_US.UTF-8"
  end

  execute "dpkg-reconfigure-locales" do
    command "dpkg-reconfigure locales"
  end
end