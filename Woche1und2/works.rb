# Hausaufgabe 1.2 -- durchschnittliche Arbeitszeiten pro Monat ermitteln
works = [
  {work: "item 1", date: "2017-04-26", time: 20},
  {work: "item 2", date: "2017-04-27", time: 27},
  {work: "item 3", date: "2017-04-27", time: 33},
  {work: "item 4", date: "2017-05-05", time: 20},
  {work: "item 5", date: "2017-05-06", time: 12},
  {work: "item 6", date: "2017-05-14", time: 10},
]
# puts works 

# Methode Arbeit pro Monat
def work_per_month(hsh)
  new_hsh = Hash.new
  if hsh.empty? do |t|
    puts hsh.count
    puts hsh.map { |t| t[:date]}
    new_hsh << hsh.group_by { |t| t[:date] }
    puts new_hsh
    puts new_hsh.count
#  puts new_hsh.reduce(0) {|sum,t| sum + t[:time]}
  end
  new_hsh
end
end
work_per_month(works)
