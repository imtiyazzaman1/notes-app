require "notes"

describe Notes do
  let(:note) { double(:note) }
  let(:note_1) { double(:note_1) }
  let(:note_2) { double(:note_2) }

  describe "#add" do
    it "should be working" do
      expect(subject).to respond_to(:add).with(1).argument
    end

    # This is a bad test
    it "notes should have a count of 1" do
      allow(note).to receive(:title).and_return("New note")
      subject.add(note)
      expect(subject.notes.count).to eq 1
    end
  end

  describe "#list_notes" do
    it "should show 1 note with title: 'Note' body: 'This is a new note'" do
      allow(note).to receive(:title).and_return("Note")
      subject.add(note)
      expect(subject.list_notes).to eq "Note"
    end

    it "should show 2 notes" do
      allow(note_1).to receive(:title).and_return("Note 1")
      allow(note_2).to receive(:title).and_return("Note 2")
      subject.add(note_1)
      subject.add(note_2)
      expect(subject.list_notes).to eq "Note 1\nNote 2"
    end
  end

  describe "#view_note"do
    it "should return the title and body of note2" do
      allow(note_1).to receive(:title).and_return("Note 1")
      allow(note_1).to receive(:body).and_return("This is a new note 1")
      allow(note_2).to receive(:title).and_return("Note 2")
      allow(note_2).to receive(:body).and_return("This is a new note 2")
      subject.add(note_1)
      subject.add(note_2)
      expect(subject.view_note("Note 2")).to eq "Note 2: This is a new note 2"
    end
  end
end
