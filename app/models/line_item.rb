class LineItem < ActiveRecord::Base
  with_options inverse_of: :line_items do
    belongs_to :order, class_name: "Order", touch: true
    belongs_to :product, class_name: "Variant"
  end
end
