
Given(/^there's a forum titled "(.*?)" with "(.*?)" description$/) do |title, desc|
	@forum = FactoryGirl.create(:forum, title: title, description: desc)
end

When(/^I am on the main page$/) do
	visit forums_path
end

Then(/^I should see the "(.*?)" forum$/) do |title|
	@forum = Forum.find_by_title(title)

	page.should have_content(@forum.title)
end

When(/^I click on new forum link$/) do
	visit new_forum_path
end

Then(/^I should see new forum form$/) do
	page.should have_content("Create New Board")
end

Given(/^my forum "(.*?)" has a topic titled "(.*?)" by "(.*?)"$/) do |forum, title, user|
	@topic = FactoryGirl.create(:topic, title: title, user_name: user, forum: Forum.find_by_title(forum))
end


When(/^I click on the forum "(.*?)" page$/) do |title|
	visit forum_path(Forum.find_by_title(title).id)
end

Then(/^I should see the topic "(.*?)"$/) do |title|
	@topic = Topic.find_by_title(title)
	page.should have_content(@topic.title)
end