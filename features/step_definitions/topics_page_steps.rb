Given(/^the topic titled "(.*?)" has first post of "(.*?)"$/) do |title, body|
	@post = FactoryGirl.create(:post, user: Topic.find_by_title(title).user_name, body: body, topic: Topic.find_by_title(title))
end

When(/^I click on the topic "(.*?)"$/) do |title|
	visit topic_path(Topic.find_by_title(title))
end

Then(/^I should see the post "(.*?)"$/) do |body|
	page.should have_content(body)
end