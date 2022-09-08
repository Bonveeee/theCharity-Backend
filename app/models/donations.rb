class Donation < ActiveRecord::Base
  belongs_to :donors
  has_many :campaigns
end