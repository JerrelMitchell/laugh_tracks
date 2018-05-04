RSpec.describe Comedian do
  before(:each) do
    @comedian1 = Comedian.create(name: 'Ian Douglas', age: 40)
    @comedian2 = Comedian.create(name: 'David Blatt', age: 30)
  end

  describe 'Comedians have attributes' do
    describe '.name' do
      it 'should return name of given comedian' do
        expect(Comedian.first.name).to eq('Ian Douglas')
      end
    end
  end

  describe '.age' do
    it 'should return age of given comedian' do
      expect(Comedian.last.age).to eq(30)
    end
  end

  describe '.average_age' do
    it 'should average total of all comedian ages' do
      expect(Comedian.average_age).to eq(35)
    end
  end
end
