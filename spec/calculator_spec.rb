RSpec.describe Calculator do
  it 'has a version number' do
    expect(Calculator::VERSION).not_to be nil
  end

  it 'adds two numbers' do
    calculator = Calculator::Calculator.new(1, 2)
    expect(calculator.add).to eql(3)
  end

  it 'adds two numbers for another edge case' do
    calculator = Calculator::Calculator.new(3, 4)
    expect(calculator.add).to_not eql(-7)
  end

  it 'checks commutative property of add' do
    calculator1 = Calculator::Calculator.new(1, 2)
    calculator2 = Calculator::Calculator.new(2, 1)
    expect(calculator2.add).to eql(3)
    expect(calculator1.add).to eql(3)
  end

  it 'checks identity property of add' do
    calculator1 = Calculator::Calculator.new(0, 1)
    expect(calculator1.add).to eql(1)
  end
end
