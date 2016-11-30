require_relative 'student' # Need to require b/c dbc_person class file has to identify Student class in shared set_phase method
require_relative 'teacher' # Don't need to require dbc_person class file b/c Teacher is a subclass of DbcPerson (can still run methods in dbc_person class file)
require_relative 'senior_teacher' # Need to require b/c teacher class file has to identify SeniorTeacher class in shared set_performance_rating method

class ApprenticeTeacher < Teacher

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
