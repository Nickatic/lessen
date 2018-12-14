class ParticipationsController < ApplicationController
  def index
    @participations = Participation.all.sort_by { |participation| participation.lesson.date}
  end

  def create
    @participation = Participation.new
    @lesson = Lesson.find(params[:lesson_id])
    @participation.lesson = @lesson
    @participation.user = current_user
    if @participation.save
      @lesson.update_price_per_user_up
      redirect_to lesson_path(@lesson)
    else
      render "lessons/show"
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @lesson = Lesson.find(@participation.lesson_id)
    @participation.destroy
    @lesson.update_price_per_user_down


    redirect_to participations_path
  end
end
