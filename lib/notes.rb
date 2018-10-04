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
    @notes.map do |note|
      note.title
    end.join("\n")
  end

  def view_note(title)
    @notes.map do |note|
      note.title + ": " + note.body if note.title == title
    end.compact.join
  end
end
