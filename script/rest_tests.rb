#! ruby


require 'rest_client'

RestClient.get 'http://localhost:3000/persons/1.json'
RestClient.get 'http://localhost:3000/persons/1.xml'
RestClient.get 'http://localhost:3000/persons.xml'

RestClient.post "http://localhost:3000/persons.xml", "<?xml version='1.0' encoding='UTF-8'?><record><designation>g</designation></record>", :content_type => :xml, :accept => :xml
RestClient.post "http://localhost:3000/users.xml", "<?xml version='1.0' encoding='UTF-8'?><user><designation>f</designation><contact_email>f@f.f</contact_email></user>", :content_type => :xml, :accept => :xml


xxx
RestClient.post "http://localhost:3000/persons.json", { 'designation' => 'g' }.to_json, :content_type => :json, :accept => :json
RestClient.post "http://localhost:3000/users.json", { 'designation' => 'e', 'contact_email' => "e@e.e" }.to_json, :content_type => :json, :accept => :json




RestClient.get 'http://localhost:3000/posts/1'

Voir aussi : http://stackoverflow.com/questions/629632/ruby-posting-xml-to-restful-web-service-using-nethttppost


puts "hello"

#### GET
#=begin
url = URI.parse('http://localhost:3000/persons/1.json')
request = Net::HTTP::Get.new(url.path) # , { 'accept' => 'html' }
response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

puts "results :"
puts response
#puts response.body
puts response.get_fields('Status')
#=end


#### POST
=begin
url = URI.parse('http://localhost:3000/persons/')
request = Net::HTTP::Post.new(url.path, { 'accept' => 'xml' })
request.body = <<-eos
<?xml version='1.0' encoding='UTF-8'?>
<user>
	<designation>d</designation>
	<contact-email>d@d.d</contact-email>
</user>
eos

response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

puts response
#Note this test PASSES!
#assert_equal '201 Created', response.get_fields('Status')[0]
=end
