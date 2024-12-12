class Post < ApplicationRecord
  belongs_to :post, dependent: :destroy
end
