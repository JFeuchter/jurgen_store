class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_categories, :set_product_types, :set_vendors

  private 
  
  def set_categories
    @categories = Category.all
  end
  def set_product_types
    @product_types = ProductType.all
  end
  def set_vendors
    @vendors = Vendor.all
  end
end
