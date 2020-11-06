class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHello

  def initialize(emailclient_class: )
    @emailclient_class = emailclient_class
  end

  def run
    email = @emailclient_class.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
