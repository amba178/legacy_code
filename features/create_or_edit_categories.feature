Feature: Create Categories 

Background: 
	Given the blog is set up 
	And I am logged into the admin panel 
	

Scenario: adding a new category and editing it 
	Given I am on the new categories page 
	When I fill in "category_name" with "General Man "
	And I fill in "category_keywords" with "  "
	And I fill in "category_permalink" with "general man"
	And I fill in "category_description" with "awesome"
	And I press "Save"
	Then I should be on the new categories page
	When I follow "General Man"
	Then I should be on the edit categories page with id "2"
	Then I should see "General Man"
	And I should see ""
	And I should see "general man"
	And I should see "awesome"



	 
	

