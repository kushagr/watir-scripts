require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.goto "http://reddit.com"
5.times do 
	visible_links = browser.links.find_all(&:present?) 
	
	#check if page has visible links
    link_count = visible_links.count
    if link_count == 0
    	browser.back
    	visible_links = browser.links.find_all(&:present?)
    end
    
    #click random link	
    random_link = visible_links.sample
    random_link.click
end	


browser.close