Feature: Card Deck

Scenario: Shuffle
  When the user visits the home page
  Then they should see the "Shuffle" button 
  And they should see all cards in correct order
  When the user clicks on the "Shuffle" button
  Then they should see all cards in random order