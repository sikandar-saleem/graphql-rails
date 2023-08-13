class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email, :password
  validates_uniqueness_of :email

  has_one :role

  has_many :time_slots
  
  accepts_nested_attributes_for :role

  def authenticated?(password)
    self.authenticate(password)
  end
end
