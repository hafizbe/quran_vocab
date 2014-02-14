class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :card_relationships
  has_many :cards, ->{ select("cards.*,card_relationships.response, card_relationships.next_date, card_relationships.id as id_relationship") },
           :through => :card_relationships



  def cards_of_today
    self.cards.where("card_relationships.next_date = ?", Date.today)
  end

end
