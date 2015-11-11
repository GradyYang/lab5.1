Given /^there is a post titled with "(.*?)" and content with "(.*?)"$/ do |title,content|
	Post.create!({ :title => "Dummy post", :content => "Dummy content", :post_time => Time.now })
end

When /^I select the post$/ do 
	@tobedeleted = Post.where(title:"Dummy post", content:"Dummy content").first
end

And /^I click "(.*?)"$/ do |link|
	click_link('Delete Post',href:'/posts/'+ @tobedeleted.id.to_s) 
end

Then /^the post should be deleted$/ do 
	page.should have_no_content(@tobedeleted.title) 
end