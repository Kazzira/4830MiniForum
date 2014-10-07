Feature: Forums Page

	Scenario: Viewing forum page
		Given there's a forum titled "First" with "First forum" description
		When I am on the main page
		Then I should see the "First" forum

	Scenario: Getting to new forum page
		When I click on new forum link
		Then I should see new forum form

	Scenario: Visiting a forum
		Given there's a forum titled "Confessions" with "Get that monkey off your back" description
		Given my forum "Confessions" has a topic titled "My Crush on Knuckles" by "Amy Rose"
		When I click on the forum "Confessions" page
		Then I should see the topic "My Crush on Knuckles"