When('I go to the home page') do
    @article_page = ArticlePage.new
    @article_page.visit_page
end

Then('I should see {string}') do |text|
    @article_page.contains text
end
