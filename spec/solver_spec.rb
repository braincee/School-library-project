require_relative('../solver')

describe "Solver" do
  before(:each) do
    @check = Solver.new
  end
  context "factorial" do
    it "return 1 when 0 is passed" do
      value = @check.factorial(0)
      expect(value).to be(1)
    end
    it "returns a corect answer" do
      value = @check.factorial(3)
      expect(value).to eq(6)
    end
    it "returns error when value less than 0 is passed" do
      value = @check.factorial(-2)
      expect(value).to eq('Wrong value specified')
    end
  end
  context "factorial" do
    it "return 1 when 0 is passed" do
      value = @check.factorial(0)
      expect(value).to be(1)
    end
    it "returns a corect answer" do
      value = @check.factorial(3)
      expect(value).to eq(6)
    end
    it "returns error when value less than 0 is passed" do
      value = @check.factorial(-2)
      expect(value).to eq('Wrong value specified')
    end
  end
end