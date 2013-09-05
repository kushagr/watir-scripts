require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.goto "http://google.com"
browser.text_field(:name => 'q').set("botflip. lets begin!")
browser.button(:name => 'btnG').click
sleep(5)
browser.close
