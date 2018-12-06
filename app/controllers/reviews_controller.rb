class ReviewsController < ApplicationController
  def create
  @lesson = Lesson.find(params[:lesson_id])
  @review = Review.new(review_params)
  @review.lesson = @lesson
  if @review.save
    respond_to do |format|
      format.html { redirect_to lesson_path(@lesson) }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  else
    respond_to do |format|
      format.html { render 'lessons/index' }
      format.js  # <-- idem
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
