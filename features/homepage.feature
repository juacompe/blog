Feature: Visit Homepage

    Scenario: Anyone visits homepage
        When I go to the home page
        Then I should see "Hello, Rails!"