# Watir Cheatsheet
This is a cheatsheet for Watir development

## Start a browser instance for specified browsers
browser = Watir::Browser.new :firefox

browser = Watir::Browser.new :chrome

browser = Watir::Browser.new :ie

## Go to a website/website controls
browser.goto "www.google.co.uk"

browser.refresh

browser.back

browser.forward

browser.quit

## Go 