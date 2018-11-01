Feature: Create book form
Input data to form
click submit button

Scenario: Create a new book with invalid params
  Given I am on "/books/new"
  When I fill in "book[name]" with "Linh"
  When I press "Create Book"
  Then I should see "Author can't be blank"

Scenario: Create a new book with valid params
  Given I am on "/books/new"
  When I fill in "book[name]" with "Linh"
  When I fill in "book[author]" with "Linh"
  When I press "Create Book"
  Then I should see "Book was successfully created."
