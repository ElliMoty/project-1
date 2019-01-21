# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean
#

class User < ApplicationRecord
    has_secure_password
    validates :email, :presence => true, :uniqueness => true
    has_many :orders
end
