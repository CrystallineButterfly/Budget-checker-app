require 'rails_helper'

RSpec.describe Catergory, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@gmail.com', password: 'password',
                     password_confirmation: 'password')

    @user.save

    @catergory = Catergory.new(name: 'Catergory one')

    @catergory.save

    @spending = Spending.new(name: 'Spent', amount: 100)

    @spending.save

    @catergory.spendings << @spending
  end

  it 'should have a name' do
    @catergory.name
    expect(@catergory.name).to eq('Catergory one')
  end

  it 'should have spendings' do
    @catergory.spendings
    expect(@catergory.spendings).to eq([@spending])
  end
end
