class InvalidCharError < StandardError; end

class LeftPad
  def LeftPad.leftpad(string, length, character=' ')
    string = string.to_s
    character = character.to_s
    length = length.to_i

    if character.length != 1
      raise InvalidCharError.new("Invalid character '#{character}'")
    end

    string.rjust(length, character)
  end
end
