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

# ++++++++++++++++++++++++++++++
# SECTION - Python Fundamentals
# ++++++++++++++++++++++++++++++

section_position += 1
section = create_or_update_section(
  title: "Fundamental Python",
  title_url: "Fundamental Python".parameterize,
  course_id: course.id,
  position: section_position,
  description: "In this section you'll learn what Python is and get your first taste of writing code."
)

lesson_position += 1
create_or_update_lesson(
  title: "Basics I",
  title_url: "Basics I: Your first Python program".parameterize,
  description: "Your first Python program",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/02_python_basics/lesson_basics_1.md",
  repo: 'curriculum'
)

lesson_position += 1
create_or_update_lesson(
  title: "Basics II: Flow Control",
  title_url: "Basics II".parameterize,
  description: "Flow Control",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/02_python_basics/lesson_basics_2_flow_control.md",
  repo: 'curriculum'
)

lesson_position += 1
create_or_update_lesson(
  title: "Basics III: Functions",
  title_url: "Basics III".parameterize,
  description: "Functions",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/02_python_basics/lesson_basics_3_functions.md",
  repo: 'curriculum'
)

lesson_position += 1
create_or_update_lesson(
  title: "FizzBuzz",
  title_url: "Project FizzBuzz".parameterize,
  description: "Python Project",
  position: lesson_position,
  section_id: section.id,
  is_project: true,
  url: "/python/02_python_basics/project_fizzbuzz.md",
  repo: 'curriculum'  
)

# ++++++++++++++++++++++++++++++
# SECTION - Data Structures
# ++++++++++++++++++++++++++++++

section_position += 1
section = create_or_update_section(
  title: "Data Structures",
  title_url: "Data Structures".parameterize,
  course_id: course.id,
  position: section_position,
  description: "In this section you'll learn how to store information."
)

lesson_position += 1
create_or_update_lesson(
  title: "Lists",
  title_url: "Lists".parameterize,
  description: "Learn what Lists are and how to use them.",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/03_data_structures/lesson_lists.md",
  repo: 'curriculum'
)

lesson_position += 1
create_or_update_lesson(
  title: "Dictionaries",
  title_url: "Dictionaries".parameterize,
  description: "Learn what Dictionaries are and how to use them.",
  position: lesson_position,
  section_id: section.id,
  is_project: false,
  url: "/python/03_data_structures/lesson_dictionaries.md",
  repo: 'curriculum'
)