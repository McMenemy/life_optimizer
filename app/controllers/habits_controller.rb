class HabitsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @habit = Habit.new
  end
  
  def create
  	@habit = current_user.habits.new(habit_params)
    if @habit.save
      flash[:success] = "Habit created!"
      redirect_to root_url
    else
      flash[:danger] = "Habit creation failed: This is a known bug being worked on"
      redirect_to root_url
    end
  end

  def destroy
  end
  
  private

    def habit_params
      params.require(:habit).permit(:title, :classification, :completed, :time_stamp,
      															:quantifier, :quantifier_unit)
    end
end