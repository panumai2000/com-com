class Comic < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :magazine

  with_options presence: true do
    validates :name
    validates :author
    validates :number, numericality: true

    validates :image

    with_options numericality: { other_than: 1 } do
      validates :genre_id
      validates :magazine_id

    end
  end
end
