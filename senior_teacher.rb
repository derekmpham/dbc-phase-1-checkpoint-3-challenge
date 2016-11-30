require_relative 'student' # Need to require b/c dbc_person class file has to identify Student class in shared set_phase method
require_relative 'teacher' # Don't need to require dbc_person class file b/c Teacher is a subclass of DbcPerson (can still run methods in dbc_person class file)
require_relative 'apprentice_teacher' # Need to require b/c teacher class file has to identify ApprenticeTeacher class in shared set_performance_rating method

class SeniorTeacher < Teacher
  attr_reader :performance_rating

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
