class LessonsController < ApplicationController
  def index
    query = params[:query]
    @lessons = Lesson.all
    if query.present?
      if query[:grade].present?
        @lessons = @lessons.search_by_grade(query[:grade])
      end
      if query[:topic].present?
        @lessons = @lessons.search_by_topic(query[:topic])
      end
      if query[:subtopic].present?
        @lessons = @lessons.search_by_subtopic(query[:subtopic])
      end
      if query[:keyword].present?
        @lessons = @lessons.search_by_keyword(query[:keyword])
      end
      if query[:min_date].present?
        @lessons = @lessons.where(:starts_at >= query[:min_date])
      end
      if query[:max_date].present?
        @lessons = @lessons.where(:starts_at <= query[:max_date])
      end
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def live
    @lesson = Lesson.find(params[:lesson_id])
  end
end
