require 'rails_helper'

RSpec.describe BusinessService do
  context 'food search' do
    it "returns appropriate data" do
      query_params = {
        start: "denver,co",
        end: "pueblo,co",
        food: "chinese"
      }
      results = BusinessService.find_food(query_params)

      binding.pry
    end
  end
end
