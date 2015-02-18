json.array!(@index_banners) do |index_banner|
  json.extract! index_banner, :id, :name, :position, :published
  json.url index_banner_url(index_banner, format: :json)
end
