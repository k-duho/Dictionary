class BoardHashTag < ApplicationRecord
  belongs_to :board
  belongs_to :keyword
end
