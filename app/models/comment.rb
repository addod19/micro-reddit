# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :c_body, presence: true, length: { minimum: 10 }
  validates :user_id, presence: true
  validates :post_id, presence: true
  belongs_to :users
  belongs_to :posts
end
