uri = URI.parse(ENV["redis://redistogo:ac0d1fb551a3008f5e9dcb87e9755929@pearlfish.redistogo.com:9679/"] || "redis://localhost:6379/" )
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)