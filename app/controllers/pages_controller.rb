class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @lessons = Lesson.all
    @upcoming_lessons = Lesson.where("date >= ?", DateTime.now).first(4)

    # .select do |lesson|
    #   lesson.starts_at.split(":")[0].to_i >= Time.now.hour
    # end
    @popular_lessons = @lessons.sort_by do |lesson|
      sum = 0
      lesson.teacher.reviews.each do |review|
        sum += review.rating
      end
      sum.fdiv(lesson.teacher.reviews.count)
    end
    @ordered_popular_lessons = @popular_lessons.reverse.first(4)
  end
end
