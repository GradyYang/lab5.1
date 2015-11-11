Feature: Delete post
As a blog owner I can delete post
Scenario: Delete post 
Given there is a post titled with "Dummy post" and content with "Dummy content"
And I am on the blog homepage
When I select the post 
And I click "Delete Post" 
Then the post should be deleted