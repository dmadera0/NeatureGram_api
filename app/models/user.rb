class User < ApplicationRecord
    has_many :posts
    validates :name, presence: true, uniqueness:true
    has_secure_password
end
