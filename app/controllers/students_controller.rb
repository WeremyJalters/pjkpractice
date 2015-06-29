class StudentsController < ApplicationController
  
  def new
    @student = Student.new
    render 'pages/students/new'
  end

end
