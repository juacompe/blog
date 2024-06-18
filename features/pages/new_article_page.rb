class NewArticlePage
    include Capybara::DSL

    def fill_title(title)
        fill_in 'Title', with: title
    end

    def fill_body(body)
        fill_in 'Body', with: body
    end

    def submit
        click_button 'Create Article'
        ShowArticlePage.new
    end
end