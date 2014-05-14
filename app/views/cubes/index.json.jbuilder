json.array!(@cubes) do |cube|
  json.extract! cube, :id, :description, :genre
  json.url cube_url(cube, format: :json)
end
