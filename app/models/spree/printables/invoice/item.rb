module Spree
  class Printables::Invoice::Item
    extend Spree::DisplayMoney

    attr_accessor :sku, :name, :options_text, :price, :quantity, :total, :pre_tax_amount, :tax_total, :product

    money_methods :price, :total

    def initialize(args = {})
      args.each do |key, value|
        send("#{key}=", value)
      end
    end
  end
end
