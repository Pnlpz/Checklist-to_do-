class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def create

    @activity = Activity.find(params[:activity_id])
    @activities = current_user.activities
    if @activities.include?(@activity)
      @activities.destroy(@activity)
      redirect_to activities_path, notice: 'deleted'
    else
      @activities << @activity
      redirect_to activities_path, notice: 'You have completed this activity! Yey!'
    end

  end

def edit
  @activity = Activity.find(params[:activity_id])
  @activity = !@activity
  redirect_to activities_path
end

  def index
    @checklists = current_user.checklists
  end

  def destroy
    @checklist = Checklist.find(params[:id])
    @checklist.destroy
    redirect_to checklist_path
  end


end
