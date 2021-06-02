FactoryBot.define do
  factory :comic do
    after(:build) do |comic|
      comic.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    name {"ワンピース"}
    author {"尾田栄一郎"}
    number {2}
    genre_id {2}
    magazine_id {2}
    association :user
  end
end