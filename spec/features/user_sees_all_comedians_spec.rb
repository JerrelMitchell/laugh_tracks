RSpec.describe 'Visitors' do
  it 'should show user all comedians' do
    comedian_name = 'Ian Douglas'
    comedian = Comedian.create(name: comedian_name, age: 35)

    visit('/comedians')

    expect(page).to have_content(comedian_name)

    expect(page).to have_content(comedian.age)
  end
end
