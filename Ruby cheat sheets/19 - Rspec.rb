class Monster
  attr_accessor :name

  def initialise(name = 'default name')
    @name = name
  end

  def fight!
    "Take that, beast !"
  end
end

describe Monster do
  it 'should have a name' do
    monster = Monster.new
    expect(monster.name).to eq('default name')
  end
  it 'Could have a custom name' do
    monster = Monster.new('Trump')
    expect(monster.name).to eq('Trump')
  end
  it 'must be able to fight' do
    monster = Monster.new
    expect(foobar.fight!).to eq("Take that b... beast !")
  end
end


