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
        raise
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
      @lessons = @lessons.sort_by { |lesson| lesson.next_price_per_user}

      if query[:sort_by] == "note"
        @lessons = @lessons.sort_by do |lesson|
          sum = 0
          lesson.teacher.reviews.each do |review|
            sum += review.rating
          end
          sum.fdiv(lesson.teacher.reviews.count)
        end
        @lessons = @lessons.reverse
      elsif query[:sort_by] == "prix"
        @lessons = @lessons.sort_by { |lesson| lesson.next_price_per_user}
      end
    end

  end

  def show
    @lesson = Lesson.find(params[:id])
    @related_lessons = Lesson.where(subtopic: @lesson.subtopic).where.not(id: @lesson.id)
  end

  def new
    @lesson = Lesson.new
  end

  def live
    @lesson = Lesson.find(params[:lesson_id])
  end
end
