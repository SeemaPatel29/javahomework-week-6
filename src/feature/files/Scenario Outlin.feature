 Feature: Bookcategory

  Background: I should be able to see homepage
  Given       I enter URL "https://demo.nopcommerce.com/" in browser
  And         I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories

  When I am on home page
  Then I should be able to see top menu tabs with "<categories>"

  Examples:
  |Categories                         |
  |Computer                           |
  |Electronic                         |
  |Apparel                            |
  |Digital downloads                  |
  |Books                              |
  |Jewellery                          |
  |Gift Card                          |

  Scenario Outline: I should be able to see book page with filters

  When   I select book category from top menu tabs on home page
  Then   I should be navigated to book category
  And    I should be able to see "<filters>"

  Examples:
  |Filters           |
  |Short by          |
  |Display           |
  |The Grid          |
  |List Tab          |

   Scenario Outline: I should be able to see list of terms of each filters
   Given             I am on book page
   When              I click on "<filter>"
   Then              I should be able to see "<list>" in dropdown menu

  Example:
   |filter            | list                                                                                    |     |
   |sort by          | Name: A to Z, name: Z to A, Price : Low to High,Price : High to low, Created on         |                            |
   |Dispaly           | 3, 6, 9                                                                                 |

   Scenario: Outline: I should be able to choose any filter option with specific result
   Given:    I am on book page
    When     I click in "<filter>"
    And      I click on any "<option>"
    Then     I should be able to choose any filter option fron the list
    And      I should be able to see "<result>"

    Example:
     |filter     |  option            |  result                                                          |
     |Sort by    |Name: A to Z        |sorted product with the product name in alphabetical order A to Z |
     |Sort by    |Name: Z to A        |sorted product with the product name in alphabetical order Z to A |
     |Sort by    |Price:low to high   |sorted product with the price in descending order                 |
     |Sort by    |Price high to low   |sorted product with the price in ascending order                  |
     |Sort by    |Created on          |Recently added product show be showed frist                       |
     |Display by | 3                  | 3 product in a page                                              |
     |Display by | 6                  | 6 product in a page                                              |
     |Display by | 9                  | 9 product in a page                                              |

     Scenario: Outline:  I should be able to see product display format according display format
      type as per given picture in srs document

      Given:  I am on book page
      When    I click on "<display format icon>"
      Then    I should be abke to see product display format according display format type
              as per given picture in srs document
      Example:
       | display format icon  |
       |Grid                  |
       |List                  |

