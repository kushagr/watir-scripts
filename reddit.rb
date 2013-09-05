require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.goto "http://reddit.com"
5.times do 
	visible_links = browser.links.find_all(&:present?) 
    link_count = visible_links.count
    random_link = visible_links.sample
    random_link.click
end	
browser.close