require 'rails_helper'

RSpec.describe Spending, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@gmail.com', password: 'password',
                     password_confirmation: 'password')

    @user.save

    @catergory = Catergory.new(name: 'Catergory one')

    @catergory.save

    @spending = Spending.new(name: 'Spent', amount: 100)

    @spending.save

    @catergory.spendings << @spending

    @user.catergories << @catergory
  end

  it 'should have a name' do
    @spending.name
    expect(@spending.name).to eq('Spent')
  end

  it 'should have an amount' do
    @spending.amount
    expect(@spending.amount).to eq(100)
  end
end
