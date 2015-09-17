class RequestHandler
  require 'net/http'

  def self.send_request(body, type)
    uri = "http://#{$request_ip}/resources/Customers/#{type}"

    uri = URI(uri)
    req = Net::HTTP.new(uri.host, uri.port)
    json_headers = {"Content-Type" => "application/json", "Accept" => "application/json"}

    response = req.post(uri.path, body, json_headers)

    response.body
  end
end
