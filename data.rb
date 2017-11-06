
require "json"
lines = File.open("log_on_date.txt") { |f| f.read}
puts r = lines.scan(/\{((\s*?.*?)*?)\}/) 
File.open("data.json","w") do |f|
    f.puts r
end