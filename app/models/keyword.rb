class Keyword < ApplicationRecord
  has_many :board_hash_tags
  has_many :boards, through: board_hash_tag
end
