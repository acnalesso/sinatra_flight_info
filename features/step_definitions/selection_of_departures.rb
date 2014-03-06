When(/^he wants to see departure from "(.*?)"$/) do |departure|
  within("#search_destination") do
    user_types_in("Search for destinations", departure)
  end
end

Then(/^he should see "(.*?)" as destination$/) do |destination|
  page.driver.error_messages.should be_empty
  should_see_a(list: ".destinations li", count: 1, text: destination)
end

When(/^he searches departures from "(.*?)"$/) do |departure|
  within("#search_destination") do
    user_types_in("Search for destinations", departure)
  end
end

Then(/^he should see the an error message$/) do
  page.should have_css(".error_message", text: /./)
end

