Given /^there is a post with title "(.*?)" and content "(.*?)"$/ do |title,content|
	Post.create!({ :title => title, :content => content, :post_time => Time.now })
end


When /^I edit this post$/ do 
	click_on "Edit" 
end

When /^I update title to "(.*?)" and content to "(.*?)"$/ do |title,content|
	 @title = title 
	 fill_in "Title", :with => title 
	 fill_in "Content", :with => content 
	 click_button("Update Post")
end


Then /^I can see it has been updated$/ do 
	visit("/posts")
	page.should have_content(@title) 
end