class ShowArticlePage
    def initialize
        @browser = Browser.new
    end

    def contains(text)
        @browser.contains text
    end
end