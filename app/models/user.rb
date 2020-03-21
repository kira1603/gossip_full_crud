class User < ApplicationRecord
    has_many :gossip
    has_many :comments
    has_many :like
end
