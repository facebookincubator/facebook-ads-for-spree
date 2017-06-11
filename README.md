FacebookAdsForSpree
================

FacebookAdsForSpree makes it easy to advertise your products on Facebook. 
It exports your Spree products to <a href="https://developers.facebook.com/docs/marketing-api/dynamic-product-ads/product-catalog">Facebook Product Catalogs</a>
 and installs <a href="https://www.facebook.com/business/help/651294705016616">Facebook Pixel</a> in your Spree shop. 

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'facebook-ads', github: '[your-github-handle]/facebook-ads'
  gem 'facebook_ads_for_spree', github: '[your-github-handle]/facebook_ads_for_spree'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g facebook_ads_for_spree:install
  ```
4. Set `default_url_options` and `asset_host` to point to your webserver and image server respectively. 
  In simple configurations your image server and webserver will use the same hostname 
  Add the following lines to `config/environments/production.rb`:
  
  ```ruby
  config.action_controller.default_url_options = { host: 'YOUR_WEBSERVER_HOST_NAME', port: OPTIONAL_PORT }
  config.action_controller.asset_host = "http://your.image.serving.host"
  ```
    
5. Restart your server

  If your server was running, restart it so that it can find the assets properly. 
  
## Using

Go to administration UI and find 'Facebook settings' item in 'Configurations' menu. 
Click 'Connect to Facebook' button and go through the dialog in the popup window to complete your setup.   

## Testing

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, 
then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

## License
The gem is available as open source under the terms of the Facebook Platform License: https://developers.facebook.com/policy/