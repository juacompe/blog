When('I go to the home page') do
    visit '/'
end

Then('I should see {string}') do |text|
    expect(page).to have_content(text)
end

When('I create a new article with title {string} and body {string}') do |title, body|
    click_link "New Article"
    expect(page).to have_content "New Article"

    fill_in 'Title', with: title
    fill_in 'Body', with: body

    click_button 'Create Article'
end

Then('I should see title {string} and body {string} on show page') do |title, body|
    expect(page).to have_content(title)
    expect(page).to have_content(body)
end