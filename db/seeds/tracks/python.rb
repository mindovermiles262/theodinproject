# CREATE TRACK Python
# *********************************

track = create_or_update_track(
  title: "Python",
  description: "Not today",
  position: 1,
)

position = 0
courses_in_track = [
  { course_id: Course.find_by_title('Python').id, position: position += 1 }
]

courses_in_track.each do |course_attrs|
  track.track_courses.create!(course_attrs) unless track.track_courses.map(&:course_id).include? course_attrs[:course_id] 
end
