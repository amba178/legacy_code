Feature: Create Categories 

Background: 
	Given the blog is set up 
	And I am logged into the admin panel 
	

Scenario: adding a new category and editing it 
	Given I am on the new categories page 
	When I fill in "category_name" with "Specific Man "
	And I fill in "category_keywords" with "  "
	And I fill in "category_permalink" with "specific man"
	And I fill in "category_description" with "awesome"
	And I press "Save"
	Then I should be on the new categories page
	When I follow "Specific Man"
	Then I should be on the edit categories page with id "2"
	Then I should see "Specific Man"
	And I should see ""
	And I should see "specific man"
	And I should see "awesome"
	When I am on the new categories page 
    When I follow "Specific Man"
    Then I should be on the edit categories page with id "2"
    And I fill in "category_name" with "Specific 2"
    And I press "Save"
    When I follow "Specific 2"
    Then I should be on the edit categories page with id "2"
    Then I should see "Specific 2"
    Then I should not see "Specific Man"



	 
	

