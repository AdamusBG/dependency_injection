class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(@title, @body)
  end
end

class NoteFormatter
  def format(title, body)
    "Title: #{title}\n#{body}"
  end
end
