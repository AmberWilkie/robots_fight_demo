require './lib/fight.rb'

describe Robot do
  let(:subject) { described_class.new(name: 'Bill') }
  let(:robot2) { described_class.new }

  it 'has a name' do
    expect(subject.name).to eq 'Bill'
  end

  it 'has no arms on initialize' do
    expect(subject.arms).to eq 0
  end

  it 'can fight' do
    expect(fight(subject, robot2)).to eq 'Robots tie!'
  end

  it 'can upgrade' do
    subject.upgrade
    expect(subject.arms).to eq 1
  end

  it 'wins a fight with more arms' do
    subject.arms = 2
    expect(fight(subject, robot2)).to eq "#{subject.name} wins the fight!"
  end

  it 'gains a fight_point when it wins a fight' do
    subject.arms = 2
    fight(subject, robot2)
    expect(subject.fight_points).to eq 1
  end

  it 'can help mankind and lose a fight point' do
    subject.help_mankind
    expect(subject.fight_points).to eq -1
  end

  it 'can fly' do
    subject.fly
    expect(subject.location).to eq 1
  end

end
