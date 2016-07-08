require 'rubygems'
require 'mechanize'
require 'mechanize'

agent = Mechanize.new
page = agent.get('http://google.co.in/')
google_form = page.form('f')
google_form.q = 'ram'
page = agent.submit(google_form)
page.search('.r a').each do |ttl|
	puts ttl.text.strip
end
