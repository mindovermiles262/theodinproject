class Rack::Attack
  Rack::Attack.blocklist('block 223.229.172.105') do |req|
    # Requests are blocked if the return value is truthy
    req.ip == '223.229.172.105'
  end
end
