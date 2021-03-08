class User < ApplicationRecord
    validates :password, presence:true
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides
    
    def mood
        if self.nausea > self.happiness
            "sad"
        else
            "happy"
        end
    end
end
