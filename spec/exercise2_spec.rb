require 'exercise2'

describe Diary do
  let(:entry_class_double) { double :entry_class }
  subject { Diary.new(entry_class: entry_class_double) }
  let(:entry) { double :entry}

  it "Creates a new entry when .add is called" do
    expect(entry_class_double).to receive(:new)
    subject.add("title", "body")
  end

  it ".title is called on entries when .index is called" do
    allow(entry_class_double).to receive(:new).and_return(entry)
    subject.add("title", "body")
    expect(entry).to receive(:title)
    subject.index
  end

end
