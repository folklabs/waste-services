# Her::API.setup url: "https://mapit.mysociety.org" do |c|
Her::API.setup url: "http://localhost:2001/api" do |c|
  puts 'her'
  # Request
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end
