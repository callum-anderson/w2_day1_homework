class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

 def get_name
   return @name
 end

 def get_cohort
   return @cohort
 end

 def change_name(new_name)
   @name = new_name
 end

end
