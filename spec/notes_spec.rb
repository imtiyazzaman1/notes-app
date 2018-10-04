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
      expect(subject.list_notes).to eq "Note: This is a new note"
    end
  end
end
