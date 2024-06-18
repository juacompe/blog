require 'rspec/expectations'

class Browser
    include Capybara::DSL
    include RSpec::Matchers

    def visit_page(url)
        visit url
    end

    def contains(text)
        expect(page).to have_content(text)
    end

end