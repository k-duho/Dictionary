class Board < ApplicationRecord
  has_many :board_hash_tags
  has_many :keywords, through: board_hash_tag
end
