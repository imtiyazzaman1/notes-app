require "notes"

describe Notes do
  describe "#add" do
    it "returns a note with title:'New note'" do
      note = Notes.new("New note")
      expect(note.title).to eq "New note"
    end

    it "returns a note with title:'New note 2'" do
      note = Notes.new("New note 2")
      expect(note.title).to eq "New note 2"
    end
  end
end