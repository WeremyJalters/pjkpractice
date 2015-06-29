class StudentsController < ApplicationController
  
  def new
    @student = Student.new
    render 'pages/students/new'
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: "Student created."
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
