class String
  def leftpad(length, character=' ')
    character = character.to_s
    length = length.to_i

    self.rjust(length, character)
  end
end
