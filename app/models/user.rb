class User < ApplicationRecord
  has_many :chatgroups through: :chatgroup_users
  has_many :chatgroup_users
  has_many :messages
end
