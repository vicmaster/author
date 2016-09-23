require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    categories: Field::HasMany,
    line_item: Field::HasOne,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    available_on: Field::DateTime,
    deleated_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    sku: Field::String,
    price: Field::String.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :categories,
    :line_item,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :categories,
    :line_item,
    :id,
    :name,
    :description,
    :available_on,
    :deleated_at,
    :created_at,
    :updated_at,
    :sku,
    :price,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :categories,
    :line_item,
    :name,
    :description,
    :available_on,
    :deleated_at,
    :sku,
    :price,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(product)
  #   "Product ##{product.id}"
  # end
end
