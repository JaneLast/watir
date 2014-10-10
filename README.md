# Watir Cheatsheet
This is a cheatsheet for Watir development

## Start a browser instance for specified browsers
```ruby
browser = Watir::Browser.new :firefox

browser = Watir::Browser.new :chrome

browser = Watir::Browser.new :ie
```

## Go to a website/website controls
```ruby
browser.goto "www.google.co.uk"

browser.refresh

browser.back

browser.forward

browser.quit

element.flash
```

## Button
```ruby
browser.button(:id, "btn").enabled?

browser.button(:id, "btn").text
 
browser.button(:id, "btn").click
```

##Checkbox
```ruby
browser.checkbox(:id, "btn").set

browser.checkbox(:id, "btn").clear

browser.checkbox(:id, "btn").set?
```

##Radio
```ruby
browser.radio(:id, "radio").set
 
browser.radio(:id, "radio").set?
```