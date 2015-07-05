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

  def edit
    @group = Group.find(params[:id])
  end

  def update
    group = Group.find(params[:id])
    group.update!(group_params)
    redirect_to group, notice: 'You have updated this group'
  end
  private
    def group_params
      params.require(:group).permit( :teacher_name, :group_time, :group_name, :group_description)
    end
end
