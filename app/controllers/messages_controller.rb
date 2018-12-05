class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @lesson = Lesson.find(params[:lesson_id])
    @message.lesson = @lesson
    @message.user = current_user
    if @message.save
      redirect_to lesson_live_path(@lesson)
    else
      render "lessons/live"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
