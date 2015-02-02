30.times do
  Api.create(
    api_name: Faker::Company.suffix,
    api_doc_url: Faker::Internet.url('example.com'),
    api_tagline: Faker::Company.catch_phrase,
    user_id: rand(1..2)
  )
end