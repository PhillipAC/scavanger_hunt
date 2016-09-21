class Collection < ActiveRecord::Base
    belongs_to :location
    belongs_to :team
    
    validates :location, presence: true
    validates :team, presence: true
    validates :location_id, uniqueness: { scope: :team,
    message: "You already checked in here!" }
end
