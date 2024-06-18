Feature: Create and update Article

    Scenario: Author create a new article
        Given I go to the article page
        When I create a new article with title "Hello Rails" and body "I am on Rails!"
        Then I should see title "Hello Rails" and body "I am on Rails!" on show page
