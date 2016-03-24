class LeftPad
  def self.leftpad(string, length, character = "")
    string.rjust(length, character)
  end
end
