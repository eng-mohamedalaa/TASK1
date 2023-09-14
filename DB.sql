CREATE TABLE `students` (
  `student_id` integer PRIMARY KEY,
  `student_name` varchar(255),
  `student_cert_name` varchar(255),
  `student_phone` varchar(255),
  `student_email` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `courses` (
  `course_id` integer PRIMARY KEY,
  `course_name` varchar(255),
  `course_decription` varchar(255),
  `course_instructor` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `enrolls` (
  `enroll_id` integer PRIMARY KEY,
  `enroll_course` varchar(255),
  `enroll_student` integer,
  `enrollment` timestamp,
  `created_at` timestamp
);

ALTER TABLE `students` ADD FOREIGN KEY (`student_id`) REFERENCES `enrolls` (`enroll_student`);

ALTER TABLE `enrolls` ADD FOREIGN KEY (`enroll_course`) REFERENCES `courses` (`course_id`);
