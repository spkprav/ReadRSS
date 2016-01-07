# ReadRss
ReadRss is a web scraper where you can just enter the website url and the xpath to scrape. Isn't it very simple?

## Features

* Multi level scraping
* Scrape every hour, day, month and year
* Store scraped data
* Subdomain for each project for API endpoints
* Manipulate data to build API endpoints
* Webhooks to notify on new data

## Start Application

You can start application using `rails s`.

## Rename project to suit your needs
* Add `gem 'rename'` to Gemfile then do
* `bundle install`
* `rails g rename:app_to name_of_app`
* Using mongoid? You need to rename the database name in config/mongoid.yml

## Some example websites
* [Feedbin](https://feedbin.com/)
* [Stringer](https://github.com/swanson/stringer)

## Note

* Not ready for production yet

## Contributors

Thank you to all the contributors on this project. Your help is much appreciated.


## Contributing

Please fork this repository and contribute back using pull request.

Any contributions, large or small, major features, bug fixes, additional language translations, unit/integration tests are welcomed and appreciated but will be thoroughly reviewed and discussed.
