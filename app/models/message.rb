class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatgroup
end