When(/^the user visits the home page$/) do
  visit '/'
end

Then(/^they should see the "(.*?)" button$/) do |arg1|
  page.find('a.btn', text: arg1)
end

Then(/^they should see all cards in correct order$/) do
  page.find("ul#cards li:nth-child(1)", text: '2-Diamond')
  page.find("ul#cards li:nth-child(2)", text: '3-Diamond')
  page.find("ul#cards li:nth-child(3)", text: '4-Diamond')
  page.find("ul#cards li:nth-child(4)", text: '5-Diamond')
  page.find("ul#cards li:nth-child(5)", text: '6-Diamond')
  page.find("ul#cards li:nth-child(6)", text: '7-Diamond')
  page.find("ul#cards li:nth-child(7)", text: '8-Diamond')
  page.find("ul#cards li:nth-child(8)", text: '9-Diamond')
  page.find("ul#cards li:nth-child(9)", text: '10-Diamond')
  # ... and so on
end

Then(/^they should see all cards in random order$/) do
  assert_raises Capybara::ElementNotFound do
    page.find("ul#cards li:nth-child(1)", text: '2-Diamond')
    page.find("ul#cards li:nth-child(2)", text: '3-Diamond')
    page.find("ul#cards li:nth-child(3)", text: '4-Diamond')
    page.find("ul#cards li:nth-child(4)", text: '5-Diamond')
    page.find("ul#cards li:nth-child(5)", text: '6-Diamond')
    page.find("ul#cards li:nth-child(6)", text: '7-Diamond')
    page.find("ul#cards li:nth-child(7)", text: '8-Diamond')
    page.find("ul#cards li:nth-child(8)", text: '9-Diamond')
    page.find("ul#cards li:nth-child(9)", text: '10-Diamond')
    # ... and so on
  end
end

When(/^the user clicks on the "(.*?)" button$/) do |arg1|
  click_on(arg1)
end
