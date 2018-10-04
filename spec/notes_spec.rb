require "notes"

describe Notes do
  describe "#add" do
    it "should be working" do
      expect(subject).to respond_to(:add).with(1).argument
    end

    it "notes should have a count of 1" do
      subject.add(Note.new("New note"))
      expect(subject.notes.count).to eq 1
    end
  end

  describe "#list_notes" do
    it "should show 1 note with title: 'Note' body: 'This is a new note'" do
      note = Note.new("Note", "This is a new note")
      subject.add(note)
      expect(subject.list_notes).to eq "Note"
    end

    it "should show 2 notes" do
      note1 = Note.new("Note 1", "This is a new note 1")
      subject.add(note1)
      note2 = Note.new("Note 2", "This is a new note 2")
      subject.add(note2)
      expect(subject.list_notes).to eq "Note 1\nNote 2"
    end
  end

  describe "#view_note"do
    it "should return the title and body of note2" do
      note1 = Note.new("Note 1", "This is a new note 1")
      subject.add(note1)
      note2 = Note.new("Note 2", "This is a new note 2")
      subject.add(note2)
      expect(subject.view_note("Note 2")).to eq "Note 2: This is a new note 2"
    end
  end
end
