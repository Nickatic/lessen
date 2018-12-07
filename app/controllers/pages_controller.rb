class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @lessons = Lesson.all
    @upcoming_lessons = Lesson.where(date: "2018-12-07")
    @popular_lessons = @lessons.sort_by do |lesson|
      sum = 0
      lesson.teacher.reviews.each do |review|
        sum += review.rating
      end
      sum.fdiv(lesson.teacher.reviews.count)
    end
    @ordered_popular_lessons = @popular_lessons.first(4).reverse
  end
end
