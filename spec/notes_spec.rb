require "notes"

describe Notes do
  describe "#add" do
    
    end
  end

  describe "#list_notes" do
    it "should have a count of 1" do
      notes = Notes.new
      note = Note.new("title", "body")
      expect(notes.list_notes.count).to eq 1
    end
  end
end
