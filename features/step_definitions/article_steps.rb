When('I go to the article page') do
    @article_page = ArticlePage.new
    @article_page.visit_page
end

When('I create a new article with title {string} and body {string}') do |title, body|
    @new_article_page = @article_page.click_new_article_link

    @new_article_page.fill_title title
    @new_article_page.fill_body body
    @show_page = @new_article_page.submit
end

Then('I should see title {string} and body {string} on show page') do |title, body|
    @show_page.contains title
    @show_page.contains body
end

Then('I should a link to edit {string}') do |title|
    pending # Write code here that turns the phrase above into concrete actions
end
