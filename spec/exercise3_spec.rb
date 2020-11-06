require 'exercise3'

describe SayHello do
  let(:emailclient_class_double) { double :emailclient_class }
  subject { SayHello.new(emailclient_class: emailclient_class_double) }
  let(:emailclient) { double :emailclient }
  let(:message) { double :message}

  it ".send is correctly called on Message within EmailClient" do
    allow(emailclient_class_double).to receive(:new).and_return(emailclient)
    allow(emailclient).to receive(:message).and_return(message)
    expect(message).to receive(:send)
    subject.run
  end


end
