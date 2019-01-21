# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  confirmed  :boolean
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :products
end
