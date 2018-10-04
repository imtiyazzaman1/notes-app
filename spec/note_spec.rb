require "note"

describe Note do
  it "should have a title: 'New note'" do
    note = Note.new("New note")
    expect(note.title).to eq "New note"
  end

  it "returns a note with body:'This is new note'" do
    note = Note.new("New note", "This is a new note")
    expect(note.body).to eq "This is a new note"
  end
end
