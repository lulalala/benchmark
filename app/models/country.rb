class Country < ActiveRecord::Base
  belongs_to :region

  scope :order_by_name, order('name asc')
end
