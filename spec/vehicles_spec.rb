require('rspec')
require('vehicles')

describe('Vehicle') do
  # before() do
  #   Vehicle.clear()
  # end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Chevy", "Metro", 1995)
      expect(test_vehicle.make()).to(eq("Chevy"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Chevy", "Metro", 1995)
      expect(test_vehicle.model()).to(eq("Metro"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Chevy", "Metro", 1995)
      expect(test_vehicle.year()).to(eq(1995))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a vehicle to the array of saved vehicles") do
      test_vehicle = Vehicle.new("Chevy", "Metro", 1995)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe("clear") do
    it("empties out all of the saved vehicles") do
      Vehicle.new("Chevy", "Metro", 1995)
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end
end
