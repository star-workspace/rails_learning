class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :comments
end
