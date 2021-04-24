class Movie < ApplicationRecord
  belongs_to :author
  validates :name, presence:true
end
