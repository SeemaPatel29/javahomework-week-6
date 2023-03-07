Feature: Nopcommerce Registration

  As a User
          I want to ckeck the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given     I open the Google Chrome Browser
    When      I open the URL https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce Registration page

   Scenario: Outline: I should not be able to register with invalid data on mandatory
                      field (*) of registration page
     When     I enter first name "<First Name>"
     And      I enter last name "<Last Name>"
     And      I enter Email address "<Email>"
     And      I enter password "<Password>"
     And      I enter Confirm password "<Confirm Password>"
     And      Click on Register button
     Then     I can see an error message "<Error Message>"
     And      I am not able to register

     Examples:

     |"        "  |bakshi     |bakshi@gmail.com |456897    |456897   | please enter first name                   |
     |Rohan       |"        " |bakshi@;gmail.com|456897    |456897   | please enter your last name               |
     |Rohan       |bakshi     |"         "      |456897    |456897   | please enter valid email                  |
     |Rohan       |bakshi     |bakshi@gmail.com | "   "    |456897   |password is required                       |
     |Rohan       |bakshi     |bakshi@gmail.com |456897    |"   "    |Confirm password required                  |
     |Rohan       |bakshi     |bakshi@gmail.com |456897    |45689    |password and confirm password do not match |
     |Rohan       |bakshi     |bakshi@gmail.com |45689     |  " "    |minimum 6 character password is required   |
     |"  "        | "   "     | "  "            |  " "     | " "     |mandatory (*) filed is required            |

     Scenario: I should be able to select Day, Month and Year from drop down list of Date of birth field

       Given    I am on Date of Birth of field of Your Personal Detail Section
       When     I select day "<Day>"
       And      I select month "<Month>"
       And      I select year "<Year>"
       Then     I am able to select Day,Month and Year from drop down list

      Example:
        | Day       | Month    |Year   |
        | 11        | November | 1989  |

      Scenario:  I should be able to check and uncheck the Newsletter box on Options section

         Given   I am on Newsletter lable on Options section
         When    I click on Newsletter Checkbox
         And     I again click on Newsletter Checkbox
         Then    I was able to check and uncheck the box next to Newsletter lable

       Scenario: I should be able to register with valid mandatory (*) field data on
                 registration page
          When   I enter First name "Rohan"
          And    I enter Last name  "bakshi"
          And    I enter Email "bakshi@gmail.com"
          And    I enter Password "456897"
          And    I enter Confirm Password "456897"
          And    I click on Registration button
          Then   I was able to register succssfullu
