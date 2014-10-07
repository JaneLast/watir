require 'spec_helper'
require 'watir'

# opens a firefox browser and goes to tumblr log in page
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com/"
browser.link(:text, /^Log/).click

# inputs username and passwords into correct fields
browser.text_field(:name, "user[email]").set "jkempton@testingcircle.com"
browser.text_field(:name, "user[password]").set "tumbrlaccount"

# Go button clicked
browser.button(:id, "signup_forms_submit").click

# Quote button clicked
browser.element(:id, "new_post_label_quote").click

browser.text_field(:id, "post_one").set "Hagrid - 'Yer a wizard Harry'"

# Post button clicked
browser.button(:class, "create_post_button").click

# Click on the posts button 
browser.link(:class, "posts").click

# Read in the latest posts body 
Quote = browser.element(:class, "quote")

# Checks that the latest posts body and checks if it equals the correct phrase
if Quote.text == "Hagrid - 'Yer a wizard Harry'" 
  puts "The post is correct"
else
  puts "The post is Incorrect"
end

browser.quit