class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @lessons = Lesson.all
    @maths_lessons = Lesson.where(topic: "Mathématiques")
    @french_lessons = Lesson.where(topic: "Français")
  end
end
