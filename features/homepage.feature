Feature: Visit Homepage

    Scenario: Author visit articles on home page
        When I go to the home page
        Then I should see "Articles"

    Scenario: Author create a new article
        Given I go to the home page
        When I create a new article with title "Hello Rails" and body "I am on Rails!"
        Then I should see title "Hello Rails" and body "I am on Rails!" on show page
