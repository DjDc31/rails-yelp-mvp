class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  resto = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: resto, message: false}

  validates :name, :address, :category, presence: true

end
