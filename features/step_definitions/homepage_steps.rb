When('I go to the home page') do
    @article_page = ArticlePage.new
    @article_page.visit_page
end

Then('I should see {string}') do |text|
    @article_page.contains text
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