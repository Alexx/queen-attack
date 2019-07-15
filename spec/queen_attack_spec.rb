require('rspec')
require('queen_attack')

describe('#queen_attack') do

  it('is true if the coordinates are on same horizontal') do
    expect(["a",1].queen_attack(["e",1])).to(eq(true))
  end

  it('is true if the coordinates are on same vertical') do
    expect(["g",3].queen_attack(["g",8])).to(eq(true))
  end

  it('is true if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect(["a",1].queen_attack(["b",2])).to(eq(true))
  end

  # else case
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect(["b",1].queen_attack(["c",7])).to(eq(false))
  end
end
