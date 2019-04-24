require_relative "../slot_machine"

def test_scenario(reels, score)
  it "should return #{score} when given #{reels.join(', ')}" do
    slot_machine = SlotMachine.new

    expect(slot_machine.score(reels)).to eq(score)
  end
end

describe SlotMachine do
  describe "#score" do
    test_scenario(["cherry", "seven", "bell"], 0)
    test_scenario(["joker", "joker", "joker"], 50)
    test_scenario(["joker", "joker", "star"], 25)
    test_scenario(["bell", "bell", "bell"], 30)
    test_scenario(["seven", "seven", "joker"], 10)
    test_scenario(["star", "joker", "star"], 20)
    test_scenario(["bell", "star", "star"], 0)
  end
end
