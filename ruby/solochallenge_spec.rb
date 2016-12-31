require relative 'solochallenge'

describe GuessGame do
  let(:guessgame) { GuessGame.new }

  it "initializes new games" do
    expect(GuessGame.new).to eq
  end

end