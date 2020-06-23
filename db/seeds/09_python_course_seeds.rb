# ************************************************
# CREATE Python COURSE
# ************************************************

Rails.logger.info "\n\n***** STARTING COURSE: Python *****"

# Set Course and section position here. Update file name appropriately.
course_position = 6
section_position = 0
lesson_position = 0

course = create_or_update_course(
  title: "Python",
  title_url: "Python".parameterize,
  description: "The Python Course",
  position: course_position
)


# +++++++++++++++++++++++
# SECTION - Introduction
# +++++++++++++++++++++++

section_position += 1
section = create_or_update_section(
  title: "Introduction to Python",
  title_url: "Introduction to Python".parameterize,
  course_id: course.id,
  position: section_position,
  description: "In this section you'll learn what Python is and get your first taste of writing code."
)


lesson_position += 1
create_or_update_lesson(
  title: "Introduction: What is Python?",
  title_url: "What is Python".parameterize,
  description: "Python lesson description.",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/01_introduction/lesson_intro.md",
  repo: 'curriculum'
)
