class Order < ActiveRecord::Base
  has_many :products, through: :line_items
  has_many :line_items
  belongs_to :user

  accepts_nested_attributes_for :line_items
  include Core::NumberGenerator.new(prefix: 'R')
end
