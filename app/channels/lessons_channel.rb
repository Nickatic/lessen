class LessonsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "lesson_#{params[:lesson_id]}"
  end
end
