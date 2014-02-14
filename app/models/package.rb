class Package < ActiveRecord::Base
  belongs_to :surah

  has_many :cards
end
