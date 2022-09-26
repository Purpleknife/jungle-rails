require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before(:each) do
      @product = Product.new do |prod|
        prod.name = 'Something'
        prod.price_cents = 20.99
        prod.quantity = 30
        prod.category = Category.new(name: 'Testing Category')
      end
    end


    it 'is valid with all four required fiels' do
      expect(@product).to be_valid
    end

    it 'is not valid without a name' do
      @product.name = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid without a price' do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid without a quantity' do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid without a category' do
      @product.category = nil
      expect(@product).to_not be_valid
    end

  end
end

