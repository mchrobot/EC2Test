user "paaftp" do
  home "/dev/xvd/www/html"
  shell "/bin/bash"
  password "$1$G6v7i7RB$LJ9ew8aXTOZMWE4QJBVwy."
end

usermod -a -G root paaftp
