# README

Web app for ABC Movie Theater

* Deployment instructions:

  Run the db/seeds.rb to load the movies and showtimes available for the site currently. Movies are loaded on a daily basis, so all movie times shown are for todays date.

* Once users purchase tickets they will recieve a confirmation email to let them know the payment was Successful

* Client will have access to all purchase information in a database, the information will be for ABC Movie Theater only

* Each theater has 30 seat capacity, so seats will be checked during the loading of the Purchase view to make sure there are still seats remaining, and also that the number of tickets  they are purchasing are still available.  If not, the purchase button will not show up on the page but instead let the user know how many seats are remaining.

* Credit Cards are validated using the credit card validator gem (however this is commented out for now since it was throwing an error during testing without real cc numbers)
