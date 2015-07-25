class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher, notice: "Teacher created."
    else
      redirect_to new_teacher_path, notice: "Teacher wasn't saved. Try again."
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name)
  end
end
