class RequestHandler
  require 'net/http'
  require 'json'

  def self.send_request(body, type)
    uri = "http://#{$request_ip}/resources/Customers/#{type}"

    uri = URI(uri)
    req = Net::HTTP.new(uri.host, uri.port)
    json_headers = {"Content-Type" => "application/json", "Accept" => "application/json"}

    response = req.post(uri.path, body.to_json, json_headers)
    if response.code.to_i == 200
      response.body = JSON.parse(response.body)
    end
    response
  end
end
