class Setting < ApplicationRecord
  belongs_to :user

  validates :country, length: { minimum: 2 }, presence: {message: :too_short}
  validates :language, length: { minimum: 2 }
end
