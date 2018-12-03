class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @lesson = Lesson.find(params[:lesson_id])
    @participation.lesson = @lesson
    @participation.user = current_user
    if @participation.save
      redirect_to lesson_path(@lesson)
    else
      render "lessons/show"
    end
  end
end
