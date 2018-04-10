class User < ApplicationRecord
    validates :email, uniqueness: { message: 'Email already exists' }
end
