class InvalidCharError < StandardError; end

class LeftPad
  def LeftPad.leftpad(string, length, character=' ')
    string = string.to_s
    character = character.to_s
    length = length.to_i

    if character.length != 1
      raise InvalidCharError.new("Invalid character '#{character}'")
    end

    length = length - string.length

    if length > 0
      length.times do
        string = "#{character}#{string}"
      end
    end

    string
  end
end
