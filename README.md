# README

## Prerequisite

* Ruby version
  > ruby 3.0.0

* Rails Version
  > Rails 7.0.1 

## HowTos
* How to run the test suite
  > bundle exec rspec

* How to see API documentation
  > open doc/api/index.html


## Scope of improvement
- To generate an API response in an API documentation 'stub_request' method should return a JSON response as a body by mocking the response. Currently I am checking status only.
- I can use a single service object by passing a URL path in call method but I prefer to execute one single action per API call. It will give us flexibility to modify API presponse for specific API in future(if required). 
- Currently I am supporting 4 service objects. I need to write tests for service object separately. Currently its covered via acceptace testing.
  - Nomics::Currencies::Highlights.call(currency: 'BTC', convert: 'ZAR', interval: '1h')
  - Nomics::Currencies::List.call(ids:"BTC,ETH,XRP")
  - Nomics::Currencies::Ticker.call(ids:"BTC,ETH")
  - Nomics::ExchangeRates::List.call
- Currently API documentation can be seen only by opening the html file. We can use 'apitome' gem to mount it to "/api/docs" so that it can be accessed by http://localhost:3000/api/docs
