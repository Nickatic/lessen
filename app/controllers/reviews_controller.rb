class ReviewsController < ApplicationController
  def create
    @lesson = Lesson.find(params[:lesson_id])
    @review = Review.new(review_params)
    @review.lesson = @lesson
    if @review.save
      redirect_to lesson_path(@lesson)
    else
      render 'lessons/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
