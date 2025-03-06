class Job < ApplicationRecord
  has_many :questions, dependent: :destroy
end
