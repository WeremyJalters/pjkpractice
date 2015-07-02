class GroupsController < ApplicationController

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: "Group Created"
    else
      render :new, notice: " please try again"
    end
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  private
    def group_params
      params.require(:group).permit( :teacher_name, :group_time, :group_name, :group_description)
    end
end
