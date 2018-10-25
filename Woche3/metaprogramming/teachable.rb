module Teachable
  attr_writer :teacher

  def has_teacher?
    !@teacher.nil?
  end

  alias teacher? has_teacher?
end
