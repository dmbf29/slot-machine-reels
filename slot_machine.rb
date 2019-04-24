class SlotMachine

  ITEMS = ["cherry", "seven", "bell", "star", "joker"]

  def score(reels)
    # separate the cases
    # check if all three are the same
    if reels.uniq.size == 1
      (ITEMS.index(reels.first) + 1) * 10
    # check if 2 are same
    elsif reels.uniq.size == 2 && reels.include?("joker")
      (ITEMS.index(reels.sort[1]) + 1) * 5
    else
      0
    end
  end

end
