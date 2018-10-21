$LOAD_PATH << "./lib"

require "task"
require "task_list"

case ARGV.shift
when "add"
  list = TaskList.from_file "tasks.txt"
  list << Task.new(ARGV.first, Time.now)
  list.save "tasks.txt"
end
