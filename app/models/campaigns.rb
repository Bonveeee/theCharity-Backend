class Campaign < ActiveRecord::Base
     belongs_to :donations
     belongs_to :donors
    
  end