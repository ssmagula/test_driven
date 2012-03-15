# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

# Smag: this regular expression checks entered emails for validity
class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  validates :name, presence: true, length: { maximum: 29 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                  uniqueness: { case_sensitive: false }, 
                      format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
