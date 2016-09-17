require "bundler"
Bundler.require

get "/" do
  erb :index
end

get "/clear" do
  `rsh 192.168.100.10 -l patlite alert 991000`
  "patlite [clear]"
end

get "/info" do
  `rsh 192.168.100.10 -l patlite alert 992000 4`
  "patlite [info]"
end

get "/warn" do
  `rsh 192.168.100.10 -l patlite alert 929001 3`
  "patlite [warn]"
end

get "/error" do
  `rsh 192.168.100.10 -l patlite alert 299002 3`
  "patlite [error]"
end

get "/crit" do
  `rsh 192.168.100.10 -l patlite alert 333004 3`
  "patlite [crit]"
end
