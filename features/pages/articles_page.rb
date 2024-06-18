class ArticlePage
    include Capybara::DSL

    def visit_page
        @browser.visit_page '/'
    end

    def initialize
        @browser = Browser.new
    end

    def contains(text)
        @browser.contains text
    end

    def click_new_article_link
        click_link "New Article"
        @browser.contains "New Article"
        NewArticlePage.new
    end
end