class Card < ActiveRecord::Base
  belongs_to :package
  has_many :traducted_cards

  has_many :card_relationships
  has_many :users, ->{ select("users.*,card_relationships.response, card_relationships.next_date, card_relationships.id as id_relationship") },
           :through => :card_relationships
end
