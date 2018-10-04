require_relative "note"

class Notes
  attr_reader :notes

  def initialize
    @notes = []
  end

  def add(note)
    @notes << note
  end

  def list_notes

  end
end
