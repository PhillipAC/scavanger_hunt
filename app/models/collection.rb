class Collection < ActiveRecord::Base
    belongs_to :location, dependent: :destroy
    belongs_to :team, dependent: :destroy
    
    validates_associated :location
    validates_associated :team
    validates :location_id, uniqueness: { scope: :team,
    message: "You already checked in here!" }
end
