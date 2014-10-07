Feature: Topic Page

	Scenario: Visiting a topic
		Given there's a forum titled "Confessions" with "Get that monkey off your back" description
		Given my forum "Confessions" has a topic titled "My Crush on Knuckles" by "Amy Rose"
		Given the topic titled "My Crush on Knuckles" has first post of "Psych! I like Chill Penguin!"
		When I click on the topic "My Crush on Knuckles"
		Then I should see the post "Psych! I like Chill Penguin!"