class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @activity = Activity.find(params[:activity_id])
    @checklist = Checklist.new(activity: @activity, user: current_user)
    if @checklist.save
      redirect_to activities_path, notice: 'You have completed this activity! Yey!'
    else
      redirect_to activities_path, alert: 'You have not completed this activity, yet.'
    end
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
