RSpec.describe Calculator do
  it 'has a version number' do
    expect(Calculator::VERSION).not_to be nil
  end

  it 'adds two numbers' do
    calculator = Calculator::Calculator.new(1, 2)
    expect(calculator.add).to eql(3)
  end

  it 'adds two numbers:edge case' do
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

  it 'subtracts two numbers' do
    calculator1 = Calculator::Calculator.new(3, 2)
    expect(calculator1.subtract).to eql(1)
  end
  it 'subtracts two numbers:edge case' do
    calculator1 = Calculator::Calculator.new(1, 0)
    expect(calculator1.subtract).to_not eql(0)
  end
  it 'checks identity property of subtraction' do
    calculator1 = Calculator::Calculator.new(0, 1)
    expect(calculator1.subtract).to eql(-1)
  end
  it 'multiplies two numbers' do
    calculator1 = Calculator::Calculator.new(3, 2)
    expect(calculator1.multiply).to eql(6)
  end
  it 'multiplies two numbers:edge case' do
    calculator1 = Calculator::Calculator.new(3, -2)
    expect(calculator1.multiply).to eql(-6)
  end
  it 'checks commutative property of multiply' do
    calculator1 = Calculator::Calculator.new(3, 2)
    calculator2 = Calculator::Calculator.new(2, 3)
    expect(calculator2.multiply).to eql(6)
    expect(calculator1.multiply).to eql(6)
  end
  it 'checks identity property of multiply' do
    calculator1 = Calculator::Calculator.new(1, 5)
    calculator2 = Calculator::Calculator.new(5, 1)
    expect(calculator2.multiply).to eql(5)
    expect(calculator1.multiply).to eql(5)
  end
end
