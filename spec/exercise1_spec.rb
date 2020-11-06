require 'exercise1'

# describe Note do
#   let(:formatter) { double :formatter }
#   subject { Note.new("title", "body", formatter)}
#
#   it "Formatter instance variable should receive .format when .display is called" do
#     allow(formatter).to receive(:format)
#     expect(formatter).to receive(:format)
#     subject.display
#   end
#
# end


describe NoteFormatter do

  it "Correctly formats the title and body" do
    expect(subject.format("title", "body")).to eq("Title: title\nbody")
  end

end
