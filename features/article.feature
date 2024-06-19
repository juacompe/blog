Feature: Create and update Article

    Scenario: Author create a new article
        Given I go to the article page
        When I create a new article with title "Hello Rails" and body "I am on Rails!"
        Then I should see title "Hello Rails" and body "I ma no !sliaR" on show page

    @doing
    Scenario: Author see article list
        Given I go to the article page
        And I create a new article with title "Hello Rails" and body "I am on Rails!"
        When I go to the article page
        Then I should a link to edit "Hello Rails"