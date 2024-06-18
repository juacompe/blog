When('I go to the home page') do
    visit '/'
end

Then('I should see {string}') do |text|
    expect(page).to have_content(text)
end