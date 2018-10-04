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

  end
end
