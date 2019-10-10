require "banking"

describe "Bank" do
  before :each do
    @account = Banking.new
  end

  it "Creates a new instance of the banking class" do
    expect(@account).to be_a(Banking)
  end

  it "returns the available balance" do
    expect(@account.available_balance).to eq 1000
  end

  it "allows the user to deposit 1000 pounds" do
    @account.deposit(1000)
    expect(@account.available_balance).to eq 2000
  end

  it "allows the user to withdraw 1000 pounds" do
    @account.withdraw(1000)
    expect(@account.available_balance).to eq 0
  end
end
