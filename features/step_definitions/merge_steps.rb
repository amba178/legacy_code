Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes 
end


Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  #pending # express the regexp above with the code you wish you had
  Article.find_by_title(title).body.should == body  
end