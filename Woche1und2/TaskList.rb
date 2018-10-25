class Task
    def initialize(text, start_time, end_time = nil, tag:"")
    @text = text
    @start_time = start_time
    @end_time = end_time
    @tag = tag
    end
    attr_reader :text, :tag

    def completed?
        @end_time  #  alternativ auch "!@end_time.nil?" möglich.
    end

    def complete!  #  gefaehrliche Methoden werden mit "!" bezeichnet.
        @end_time = Time.now + 1000
    end

    def weekday
        @start_time.wday
    end

    def duration
        return 0 unless completed?
        (@end_time - @start_time).to_i # to_integer methode
    end
end

newtask = Task.new("Erste Aufgabe", Time.now)
puts newtask

newtask.complete!
puts newtask.completed?

task2 = Task.new("taskclass schreiben", Time.now)
task3 = Task.new("taskclass testen", Time.now)
task3.complete!
puts task3.completed?

class TaskList
    def initialize (tasks = [])
        @tasks = tasks
    end

    def <<(task)
        @tasks << task
        self
    end
    include Enumerable  # Monkey Patching durch Inkludierung der "each" Methode. Dadurch werden auch alle anderen Methoden von Enumerable verfuegbar, wie z.B.: #count
    def each
        @tasks.each {|t| yield t}
    end
    def seconds_by_weekday
        select(&:completed?)  #  1. Filtern nach abgeschlossenen Aufgaben
            .group_by(&:weekday)  # 2. Nach Wochentagen gruppieren (1=Montag, 2=Dienstag, ...) mit der weekday methode aus der Task-Klasse. Ergebnis ist ein Hash/Dictionary mit den Wochentagen und den dazugehörigen Aufgaben.
            .transform_values do |tasks|  # 3. Umwandeln der Werte des Hashes
            tasks.reduce(0) do |sum, t|   # 4. Aufsummieren mit der duration-Methode der Task-Klasse 
                sum + t.duration
            end
        end
    end

end


list = TaskList.new([newtask])
list << task2
list << task3
puts "Es sind #{list.count} Aufgaben in der Aufgabenliste."

puts list.select {|t| t.completed?}
#da der obige Block sehr geläufig ist, gibt es eine Kurzform. Das sogenannte Block-Argument, der aus dem Methoden-Namen als Symbol(:) und mit einem & (Kaufmännisches Und) beginnt z.B.:
puts list.select(&:completed?)  #  Das Umwandeln in einen Block ist für Symbole (:) so wie oben implementiert: "{|t| t.completed?}", d.h. ein Block der einen Parameter entgegen nimmt und auf diesem Parameter die Methode die dem Symbol entspricht aufruft.


print list.seconds_by_weekday
