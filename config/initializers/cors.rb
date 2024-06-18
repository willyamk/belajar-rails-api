# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

# Menambahkan middleware Rack::Cors ke dalam aplikasi Rails
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # Mengizinkan semua origin (siapa saja boleh mengakses API)
  allow do
    origins "*"

    # Mengizinkan semua jenis resource dan metode HTTP
    resource "*",
      headers: :any, # Mengizinkan semua header
      methods: [:get, :post, :put, :patch, :delete, :options, :head] # Mengizinkan semua metode HTTP
  end
end

