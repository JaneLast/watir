require 'spec_helper'
require 'watir'

describe "Create a Text post" do
  it "Creates a Text post" do
  # opens a firefox browser and goes to tumblr log in page
    @browser = Watir::Browser.new :firefox
    @browser.goto "https://www.tumblr.com/"
    @browser.link(:text, /^Log/).click
    
    # inputs username and passwords into correct fields
    @browser.text_field(:name, "user[email]").set "jkempton@testingcircle.com"
    @browser.text_field(:name, "user[password]").set "tumbrlaccount"
    
    # Go button clicked
    @browser.button(:id, "signup_forms_submit").click
    # Text button clicked
    @browser.element(:id, "new_post_label_text").click
    
    # Input "Hello World" into the text body
    sleep 2
    @browser.send_keys "Hello World" # Such a cheaty way!!
    
    # Post button clicked
    sleep 2
    @browser.button(:class, "create_post_button").click
    
    # Click on the posts button 
    @browser.link(:class, "posts").click
    
    # Read in the latest posts body 
    topPostContent = @browser.element(:class, "post_body")
    
    # Checks that the latest posts body and checks if it equals the correct phrase
    expect(topPostContent.text).to eq("Hello World")
    puts "The post is correct"
    @browser.quit
   end   
end
