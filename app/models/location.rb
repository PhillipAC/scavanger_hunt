class Location < ActiveRecord::Base
    has_many :collections, dependent: :destroy
    
    def to_param
        code
    end
end
