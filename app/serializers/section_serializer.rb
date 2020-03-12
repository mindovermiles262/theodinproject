class SectionSerializer
  attr_reader :section, :between_dates
  private :section, :between_dates

  def initialize(section, between_dates = nil)
    @section = section
    @between_dates = between_dates
  end

  def self.as_json(section, between_dates = nil)
    new(section, between_dates).as_json
  end

  def as_json(_options = nil)
    {
      title: section.title,
      lessons: serialized_lessons
    }
  end

  private

  def serialized_lessons
    section.lessons.map do |lesson|
      LessonSerializer.as_json(lesson, between_dates)
    end
  end
end
