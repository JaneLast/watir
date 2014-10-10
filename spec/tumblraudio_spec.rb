require 'watir'

describe "Create an Audio post" do
  it "Creates an Audio post" do
    # opens a firefox browser and goes to tumblr log in page
    @browser = Watir::Browser.new :firefox
    @browser.goto "https://www.tumblr.com/"
    @browser.link(:text, /^Log/).click
    
    # inputs username and passwords into correct fields
    @browser.text_field(:name, "user[email]").set "jkempton@testingcircle.com"
    @browser.text_field(:name, "user[password]").set "tumbrlaccount"
    
    # Go button clicked
    @browser.button(:id, "signup_forms_submit").click
    
    # Quote button clicked
    @browser.element(:id, "new_post_label_audio").click
    
    @browser.link(:id, "tab_audio_external").click
    
    @browser.text_field(:id, "post_three").set("https://soundcloud.com/sikdope/omen")
    
    # Post button clicked
    sleep 2
    @browser.button(:class, "create_post_button").click
    
    #Click on the posts button 
    @browser.link(:class, "posts").click
    
    # Read in the latest posts body 
    Audio = @browser.a(:class, "post_info_link post_source_link")
    
    # Checks that the latest posts body and checks if it equals the correct phrase
    expect(Audio.text).to eq "SoundCloud / Sikdope" 
      puts "The post is correct"
  end
end