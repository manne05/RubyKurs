# Klasse mit der Aufgaben bearbeitet werden
class Task
  def initialize(text, start_time, end_time = nil, tag: "")
    @text = text
    @start_time = start_time
    @end_time = end_time
    @tag = tag
  end

  attr_reader :text, :tag

  # ist die Aufgabe abgeschlossen?
  def completed?
    @end_time    # ja, wenn sie eine Endezeit besitzt
  end

  # Aufgabe abschließen, Endezeit setzen
  def complete!
    @end_time = Time.now
  end
end

task1 = Task.new("Chaos machen", Time.now)
task1.complete!
puts task1.text, task1.tag
if task1.completed?
  puts "Abgeschlossen"
else
  puts "Noch offen"
end
