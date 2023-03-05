# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

load(file.path(.get_course_path(), "Week-02-Intro", "01_SOCNE", "data.rdata"))

if(!require(tibble)){
  install.packages("tibble")
  library(tibble)
}