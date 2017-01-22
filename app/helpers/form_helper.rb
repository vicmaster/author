module FormHelper
  def setup_order(order)
    order.line_items.build
    order
  end
end
