require "dealership"
require "rspec"
require "pry"

describe(Dealership) do
  describe '#name' do
    it "returns name of the dealership" do
      test_dealership = Dealership.new("Tiny Trevor's Used Cars")
      expect(test_dealership.name()).to(eq("Tiny Trevor's Used Cars"))
    end
  end
  describe('#id') do
    it "returns the id of the dealership" do
      test_dealership = Dealership.new("Tiny Trevor's Used Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end
end
