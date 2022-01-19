Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'http://localhost:3001', 'http://localhost:8080', 'http://localhost:4200'
        resource '*', headers: :any, methods: [:get, :post, :delete, :put]
    end
end