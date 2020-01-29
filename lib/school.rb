class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize start_time, hours_in_school_day
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    student_names << student_name
  end
  

  def end_time
    calculation = start_time.to_i + hours_in_school_day
    "#{calculation}:00"
  end

  def is_full_time?
    return false unless hours_in_school_day > 4
    true
  end

  def standard_student_names
    student_names.map{|name| name.capitalize}
  end

  def convert_end_time_to_clock_time
    calculation = start_time.to_i + hours_in_school_day
    if calculation == 12
      "12:00pm"
    elsif calculation > 12 && calculation < 24
      "#{calculation - 12}:00pm"
    elsif calculation == 24
      "12:00am"
    else
      "#{calculation}:00am"
    end

  end

end
