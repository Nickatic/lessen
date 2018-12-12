class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @lessons = Lesson.where.not(teacher: current_user).where("date >= ?", Date.today)
    @upcoming_lessons = @lessons.first(3)
    @popular_lessons = @lessons.sort_by do |lesson|
      sum = 0
      lesson.teacher.reviews.each do |review|
        sum += review.rating
      end
      sum.fdiv(lesson.teacher.reviews.count)
    end
    @ordered_popular_lessons = @popular_lessons.reverse.first(3)
  end
end
