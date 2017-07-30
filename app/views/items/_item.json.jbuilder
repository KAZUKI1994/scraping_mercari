json.extract! item, :id, :code, :url, :name, :price, :tax_price, :soldout, :created_at, :updated_at
json.url item_url(item, format: :json)
