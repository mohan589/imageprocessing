json.image_process do
  json.id image.id
  json.title image.title
  json.picture image.picture.url(:thumb)
  json.created_at image.created_at
  json.updated_at image.updated_at
end
