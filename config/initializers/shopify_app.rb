ShopifyApp.configure do |config|
  config.api_key = ENV['SHOPIFY_CLIENT_API_KEY']
  config.secret = ENV['SHOPIFY_CLIENT_API_SECRET']
  config.scope = "write_shipping, read_shipping"
  config.embedded_app = true
  config.webhooks = [
    {topic: 'shop/update', address: 'https://parcelify.herokuapp.com/webhooks/shop_update', format: 'json'},
  ]
end
