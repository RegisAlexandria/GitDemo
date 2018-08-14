Feature: Application Login

Background:
Given validate the browser
When Browser is triggered
Then check if browser is displayed

#Passando texto hardcoded


Scenario: Home page default login
Given User is on NetBanking landing page
When User login into application with "Jim" and password "1234"
Then Home page is populated
And Cards are displayed

Scenario: Home page default login
Given User is on NetBanking landing page
When User login into application with "john" and password "4321"
Then Home page is populated
And Cards are displayed

#Passando texto DataTable Concept
Scenario: Home page default login
Given User is on NetBanking landing page
When User sign up with following details
|jenny|abcd|john@abcd.com|Australia|3242353|
Then Home page is populated
And Cards are displayed

#Passando texto KeyWord Concept
Scenario Outline: Home page default login
Given User is on NetBanking landing page
When User login in to application with <Username> and <Password>
Then Home page is populated
And Cards are displayed

Examples:
|Username|Password|
|User1	 |Pass1	  |
|User2	 |Pass2	  |
|User3	 |Pass3	  |
|User4S	 |Pass4	  |