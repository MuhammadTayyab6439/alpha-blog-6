class User < ApplicationRecord
    
    has_many :articles
    validates :username, presence: true,uniqueness: {case_sensitive: false}, length: {minmum:3,maximum:26}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum:1000},
                        uniqueness: {case_sensitive: false},
                        format: {with: VALID_EMAIL_REGEX }
    has_secure_password   
    validates :password, presence: true          
end