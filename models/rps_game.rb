class RPSGame
  PLAYS = [:rock, :paper, :scissors]

  attr_accessor :choice, :computer_play, :computer_choice

  def initialize(choice)
    @choice = choice
    raise PlayTypeError if self.class.valid_play?(choice) == false
    computer_choice
  end

  def computer_choice
    @computer_play = PLAYS.sample
  end

  def self.valid_play?(choice)
    PLAYS.include?(choice)
  end

  def won?
    if (self.choice == :rock) && (computer_play == :scissors)
      true
    elsif (self.choice == :scissors) && (computer_play == :paper)
      true
    elsif (self.choice == :paper) && (computer_play == :rock)
      true
    else
      false
    end
  end

  def tied?
    self.choice == computer_play
  end

  def lost?
    !self.won? && !self.tied?
  end

  def outcome
    if self.won?
    "You win!"
    elsif self.lost?
    "You lose!"
    else
    "You tied"
    end
  end
end

class PlayTypeError < StandardError
end