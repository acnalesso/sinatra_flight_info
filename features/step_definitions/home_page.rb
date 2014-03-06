Then(/^he should see a list of departures$/) do
  should_see_a(list: ".departures li", count: 3, text: /./)
end

