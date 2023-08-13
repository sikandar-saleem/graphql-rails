class Role < ApplicationRecord

  validates_presence_of :name, :priority

  belongs_to :user
end
