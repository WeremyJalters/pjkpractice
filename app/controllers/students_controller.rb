class StudentsController < ApplicationController
  before_action :require_login

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: "Student created."
    else
      render :new, notice: "student was not created" #this isn't working, not rendering
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :group_name )
  end
end
