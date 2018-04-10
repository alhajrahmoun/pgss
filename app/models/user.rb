class User < ApplicationRecord
    validates :email, uniqueness:  {message: 'already exists' }
end
