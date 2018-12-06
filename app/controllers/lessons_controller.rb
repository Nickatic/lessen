class LessonsController < ApplicationController
  def index
    query = params[:query]
    @lessons = Lesson.all

    if query.present?
      @grade = query[:grade]

      if query[:grade].present?
        @lessons = @lessons.search_by_grade(query[:grade])
      end
      @topic = query[:topic]
      if query[:topic].present?
        @lessons = @lessons.search_by_topic(query[:topic])
      end
      if query[:subtopic].present?
        @lessons = @lessons.search_by_subtopic(query[:subtopic])
      end
      if query[:keyword].present?
        @lessons = @lessons.search_by_keyword(query[:keyword])
      end
      if query[:range_date].present?
        @range_date = query[:range_date]
        @min_date = @range_date.split(" to ")[0]
        @max_date = @range_date.split(" to ")[1]
        if @min_date.present?
          @lessons = @lessons.where("date >= ?", Date.strptime(@min_date, "%Y-%m-%d"))
        end
        if @max_date.present?
          @lessons = @lessons.where("date <= ?", Date.strptime(@max_date, "%Y-%m-%d"))
        end
      end
      if query[:min_time].present?
        @lessons = @lessons.select do |lesson|
          lesson.starts_at.split(":")[0].to_i >= query[:min_time].to_i
        end
      end
      if query[:max_time].present?
        @lessons = @lessons.select do |lesson|
          lesson.starts_at.split(":")[0].to_i <= query[:max_time].to_i
        end
      end
      # if query[:min_time].present?
      #   @lessons = @lessons.where("starts_at >= ? ", Date.strptime(query[:min_time], "%H:%M"))
      # end
      # if query[:max_time].present?
      #   @lessons = @lessons.where("starts_at <= ? ", Date.strptime(query[:max_time], "%H:%M"))
      # end
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @review = Review.new
    @related_lessons = Lesson.where(topic: @lesson.topic).take(3)
  end

  def new
    @lesson = Lesson.new
  end

  def live
    @lesson = Lesson.find(params[:lesson_id])
  end
end
