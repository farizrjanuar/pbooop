INSERT INTO users (fullname, email, password) VALUES ('Muhammad Hilal Abyan', 'lalalal@gmail.com', 'lalalal');

INSERT INTO course (title, description) VALUES ('Introduction to Java', 'Learn the basics of Java programming.');
INSERT INTO course (title, description) VALUES ('Advanced Java', 'Deep dive into advanced Java topics.');
INSERT INTO course (title, description) VALUES ('Data Science', 'Introduction to data science and machine learning.');

------ Modules for 'Introduction to Java' (courseId = 1)
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Basics', 'Introduction to Java syntax and structure.', 'Java content 1', 1);
INSERT INTO modules (title, description, content, course_id) VALUES ('OOP in Java', 'Learn Object-Oriented Programming in Java.', 'Java content 2', 1);
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Data Structures', 'Introduction to data structures in Java.', 'Java content 3', 1);

-- Modules for 'Advanced Java' (courseId = 2)
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Collections', 'Introduction to Java Collections Framework.', 'Java content 1', 2);
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Streams', 'Learn about Java Streams API.', 'Java content 2', 2);
INSERT INTO modules (title, description, content, course_id) VALUES ('Concurrency in Java', 'Advanced concepts of concurrency in Java.', 'Java content 3', 2);

-- Modules for 'Data Science' (courseId = 3)
INSERT INTO modules (title, description, content, course_id) VALUES ('Introduction to Python', 'Learn the basics of Python programming.', 'Data Science content 1', 3);
INSERT INTO modules (title, description, content, course_id) VALUES ('Data Analysis with Pandas', 'Data analysis using the Pandas library.', 'Data Science content 2', 3);
INSERT INTO modules (title, description, content, course_id) VALUES ('Machine Learning Basics', 'Introduction to machine learning concepts.', 'Data Science content 3', 3);

INSERT INTO quiz (reward_point, module_id) VALUES (10, 1);
INSERT INTO quiz (reward_point, module_id) VALUES (15, 2);
INSERT INTO quiz (reward_point, module_id) VALUES (20, 3);
INSERT INTO quiz (reward_point, module_id) VALUES (25, 4);
INSERT INTO quiz (reward_point, module_id) VALUES (30, 5);
INSERT INTO quiz (reward_point, module_id) VALUES (35, 6);
INSERT INTO quiz (reward_point, module_id) VALUES (40, 7);
INSERT INTO quiz (reward_point, module_id) VALUES (45, 8);
INSERT INTO quiz (reward_point, module_id) VALUES (50, 9);

-- Insert Single Choice and Multiple Choice Questions
-- Java Basics Quiz Questions (QuizId = 1)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'SINGLE_CHOICE', 'What is the correct way to define a main method in Java?');
INSERT INTO options (question_id, options) VALUES (1, 'public static void main(String[] args)');
INSERT INTO options (question_id, options) VALUES (1, 'static public void main(String args[])');
INSERT INTO options (question_id, options) VALUES (1, 'public void static main(String args[])');
INSERT INTO options (question_id, options) VALUES (1, 'void static main(String[] args)');
INSERT INTO correct_answers (question_id, correct_answer) values (1, 'public static void main(String[] args)');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'SINGLE_CHOICE', 'Which data type is used to create a variable that should store text?');
INSERT INTO options (question_id, options) VALUES (2, 'int');
INSERT INTO options (question_id, options) VALUES (2, 'float');
INSERT INTO options (question_id, options) VALUES (2, 'String');
INSERT INTO options (question_id, options) VALUES (2, 'boolean');
INSERT INTO correct_answers (question_id, correct_answer) values (2, 'String');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Which of the following are valid Java keywords?');
INSERT INTO options (question_id, options) VALUES (3, 'class');
INSERT INTO options (question_id, options) VALUES (3, 'public');
INSERT INTO options (question_id, options) VALUES (3, 'inherit');
INSERT INTO options (question_id, options) VALUES (3, 'void');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'class');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'public');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'void');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Which of the following are primitive data types in Java?');
INSERT INTO options (question_id, options) VALUES (4, 'int');
INSERT INTO options (question_id, options) VALUES (4, 'String');
INSERT INTO options (question_id, options) VALUES (4, 'double');
INSERT INTO options (question_id, options) VALUES (4, 'float');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'int');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'double');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'float');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Select all valid access modifiers in Java:');
INSERT INTO options (question_id, options) VALUES (5, 'public');
INSERT INTO options (question_id, options) VALUES (5, 'private');
INSERT INTO options (question_id, options) VALUES (5, 'protected');
INSERT INTO options (question_id, options) VALUES (5, 'internal');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'public');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'private');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'protected');

-- OOP in Java Quiz Questions (QuizId = 2)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'SINGLE_CHOICE', 'Which of these is not a principle of OOP?');
INSERT INTO options (question_id, options) VALUES (6, 'Encapsulation');
INSERT INTO options (question_id, options) VALUES (6, 'Abstraction');
INSERT INTO options (question_id, options) VALUES (6, 'Polymorphism');
INSERT INTO options (question_id, options) VALUES (6, 'Interpretation');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (6, 'Interpretation');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'SINGLE_CHOICE', 'Which keyword is used to inherit a class in Java?');
INSERT INTO options (question_id, options) VALUES (7, 'inherits');
INSERT INTO options (question_id, options) VALUES (7, 'extends');
INSERT INTO options (question_id, options) VALUES (7, 'implements');
INSERT INTO options (question_id, options) VALUES (7, 'super');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (7, 'extends');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Which of the following are features of OOP?');
INSERT INTO options (question_id, options) VALUES (8, 'Inheritance');
INSERT INTO options (question_id, options) VALUES (8, 'Encapsulation');
INSERT INTO options (question_id, options) VALUES (8, 'Abstraction');
INSERT INTO options (question_id, options) VALUES (8, 'Polymorphism');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Inheritance');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Encapsulation');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Abstraction');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Polymorphism');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Which of the following classes are part of Java’s OOP hierarchy?');
INSERT INTO options (question_id, options) VALUES (9, 'Object');
INSERT INTO options (question_id, options) VALUES (9, 'String');
INSERT INTO options (question_id, options) VALUES (9, 'Integer');
INSERT INTO options (question_id, options) VALUES (9, 'Collections');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'Object');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'String');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'Integer');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Select valid object-oriented design principles:');
INSERT INTO options (question_id, options) VALUES (10, 'Open-Closed Principle');
INSERT INTO options (question_id, options) VALUES (10, 'Single Responsibility Principle');
INSERT INTO options (question_id, options) VALUES (10, 'Circular Dependency');
INSERT INTO options (question_id, options) VALUES (10, 'Dependency Inversion');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Open-Closed Principle');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Single Responsibility Principle');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Dependency Inversion');

---- Java Data Structures Quiz Questions (QuizId = 3)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'SINGLE_CHOICE', 'Which data structure uses LIFO (Last In First Out)?');
INSERT INTO options (question_id, options) VALUES (11, 'Queue');
INSERT INTO options (question_id, options) VALUES (11, 'Stack');
INSERT INTO options (question_id, options) VALUES (11, 'Array');
INSERT INTO options (question_id, options) VALUES (11, 'LinkedList');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (11, 'Stack');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'SINGLE_CHOICE', 'Which is the fastest for accessing data by index?');
INSERT INTO options (question_id, options) VALUES (12, 'Array');
INSERT INTO options (question_id, options) VALUES (12, 'LinkedList');
INSERT INTO options (question_id, options) VALUES (12, 'Stack');
INSERT INTO options (question_id, options) VALUES (12, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (12, 'Array');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Which of the following are examples of linear data structures?');
INSERT INTO options (question_id, options) VALUES (13, 'Array');
INSERT INTO options (question_id, options) VALUES (13, 'Stack');
INSERT INTO options (question_id, options) VALUES (13, 'Graph');
INSERT INTO options (question_id, options) VALUES (13, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Stack');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Queue');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Select all operations commonly associated with stacks:');
INSERT INTO options (question_id, options) VALUES (14, 'Push');
INSERT INTO options (question_id, options) VALUES (14, 'Pop');
INSERT INTO options (question_id, options) VALUES (14, 'Enqueue');
INSERT INTO options (question_id, options) VALUES (14, 'Dequeue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (14, 'Push');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (14, 'Pop');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Which of these data structures can be used for traversal?');
INSERT INTO options (question_id, options) VALUES (15, 'Graph');
INSERT INTO options (question_id, options) VALUES (15, 'Tree');
INSERT INTO options (question_id, options) VALUES (15, 'Stack');
INSERT INTO options (question_id, options) VALUES (15, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Graph');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Tree');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Array');

-- Java Collections Quiz Questions (QuizId = 4)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'SINGLE_CHOICE', 'Which Java collection uses key-value pairs?');
INSERT INTO options (question_id, options) VALUES (16, 'List');
INSERT INTO options (question_id, options) VALUES (16, 'Set');
INSERT INTO options (question_id, options) VALUES (16, 'Map');
INSERT INTO options (question_id, options) VALUES (16, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (16, 'Map');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'SINGLE_CHOICE', 'Which collection does not allow duplicate elements?');
INSERT INTO options (question_id, options) VALUES (17, 'List');
INSERT INTO options (question_id, options) VALUES (17, 'Set');
INSERT INTO options (question_id, options) VALUES (17, 'Queue');
INSERT INTO options (question_id, options) VALUES (17, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (17, 'Set');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which of the following are part of the Java Collections Framework?');
INSERT INTO options (question_id, options) VALUES (18, 'List');
INSERT INTO options (question_id, options) VALUES (18, 'Map');
INSERT INTO options (question_id, options) VALUES (18, 'Set');
INSERT INTO options (question_id, options) VALUES (18, 'Stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'List');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'Map');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'Set');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which operations are commonly supported by a List?');
INSERT INTO options (question_id, options) VALUES (19, 'Add');
INSERT INTO options (question_id, options) VALUES (19, 'Remove');
INSERT INTO options (question_id, options) VALUES (19, 'Sort');
INSERT INTO options (question_id, options) VALUES (19, 'Reverse');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Add');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Remove');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Sort');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Reverse');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which types of Map exist in Java?');
INSERT INTO options (question_id, options) VALUES (20, 'HashMap');
INSERT INTO options (question_id, options) VALUES (20, 'TreeMap');
INSERT INTO options (question_id, options) VALUES (20, 'ConcurrentHashMap');
INSERT INTO options (question_id, options) VALUES (20, 'ArrayMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'ArrayMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'TreeMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'ConcurrentHashMap');

---- Java Streams Quiz Questions (QuizId = 5)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'SINGLE_CHOICE', 'Which stream operation is terminal?');
INSERT INTO options (question_id, options) VALUES (21, 'filter');
INSERT INTO options (question_id, options) VALUES (21, 'map');
INSERT INTO options (question_id, options) VALUES (21, 'collect');
INSERT INTO options (question_id, options) VALUES (21, 'peek');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (21, 'collect');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'SINGLE_CHOICE', 'Which Java package provides the Streams API?');
INSERT INTO options (question_id, options) VALUES (22, 'java.util.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.io.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.nio.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.net.stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (22, 'java.util.stream');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Which of the following are stream intermediate operations?');
INSERT INTO options (question_id, options) VALUES (23, 'map');
INSERT INTO options (question_id, options) VALUES (23, 'filter');
INSERT INTO options (question_id, options) VALUES (23, 'sorted');
INSERT INTO options (question_id, options) VALUES (23, 'reduce');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'map');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'filter');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'sorted');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Select valid characteristics of streams in Java:');
INSERT INTO options (question_id, options) VALUES (24, 'Lazy');
INSERT INTO options (question_id, options) VALUES (24, 'Stateless');
INSERT INTO options (question_id, options) VALUES (24, 'Thread-safe');
INSERT INTO options (question_id, options) VALUES (24, 'Sequential');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (24, 'Lazy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (24, 'Stateless');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Which are valid ways to create streams in Java?');
INSERT INTO options (question_id, options) VALUES (25, 'From Collections');
INSERT INTO options (question_id, options) VALUES (25, 'Using Stream.generate()');
INSERT INTO options (question_id, options) VALUES (25, 'Using Stream.of()');
INSERT INTO options (question_id, options) VALUES (25, 'From BufferedReader');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'From Collections');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'Using Stream.generate()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'Using Stream.of()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'From BufferedReader');

-- Concurrency in Java Quiz Questions (QuizId = 6)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'SINGLE_CHOICE', 'Which keyword is used to create threads in Java?');
INSERT INTO options (question_id, options) VALUES (26, 'extends');
INSERT INTO options (question_id, options) VALUES (26, 'implements');
INSERT INTO options (question_id, options) VALUES (26, 'synchronize');
INSERT INTO options (question_id, options) VALUES (26, 'thread');
INSERT INTO options (question_id, options) VALUES (26, 'java.net.stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (26, 'implements');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'SINGLE_CHOICE', 'Which method is used to start a thread?');
INSERT INTO options (question_id, options) VALUES (27, 'run()');
INSERT INTO options (question_id, options) VALUES (27, 'execute()');
INSERT INTO options (question_id, options) VALUES (27, 'start()');
INSERT INTO options (question_id, options) VALUES (27, 'begin()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (27, 'start()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which are valid thread states in Java?');
INSERT INTO options (question_id, options) VALUES (28, 'New');
INSERT INTO options (question_id, options) VALUES (28, 'Runnable');
INSERT INTO options (question_id, options) VALUES (28, 'Blocked');
INSERT INTO options (question_id, options) VALUES (28, 'Terminated');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'New');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Runnable');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Blocked');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Terminated');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which classes support thread synchronization?');
INSERT INTO options (question_id, options) VALUES (29, 'Semaphore');
INSERT INTO options (question_id, options) VALUES (29, 'Lock');
INSERT INTO options (question_id, options) VALUES (29, 'ReentrantLock');
INSERT INTO options (question_id, options) VALUES (29, 'Thread');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'Semaphore');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'Lock');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'ReentrantLock');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which methods can pause thread execution?');
INSERT INTO options (question_id, options) VALUES (30, 'sleep()');
INSERT INTO options (question_id, options) VALUES (30, 'wait()');
INSERT INTO options (question_id, options) VALUES (30, 'yield()');
INSERT INTO options (question_id, options) VALUES (30, 'stop()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'sleep()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'wait()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'yield()');

-- Introduction to Python Quiz Questions (QuizId = 7)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'SINGLE_CHOICE', 'Which is the correct file extension for Python files?');
INSERT INTO options (question_id, options) VALUES (31, '.py');
INSERT INTO options (question_id, options) VALUES (31, '.python');
INSERT INTO options (question_id, options) VALUES (31, '.pyt');
INSERT INTO options (question_id, options) VALUES (31, '.txt');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (31, '.py');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'SINGLE_CHOICE', 'Which of the following is used to print in Python?');
INSERT INTO options (question_id, options) VALUES (32, 'echo');
INSERT INTO options (question_id, options) VALUES (32, 'print');
INSERT INTO options (question_id, options) VALUES (32, 'printf');
INSERT INTO options (question_id, options) VALUES (32, 'write');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (32, 'print');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which are valid Python data types?');
INSERT INTO options (question_id, options) VALUES (33, 'int');
INSERT INTO options (question_id, options) VALUES (33, 'float');
INSERT INTO options (question_id, options) VALUES (33, 'string');
INSERT INTO options (question_id, options) VALUES (33, 'list');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'int');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'float');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'string');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'list');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which methods can be used to manipulate strings in Python?');
INSERT INTO options (question_id, options) VALUES (34, 'split()');
INSERT INTO options (question_id, options) VALUES (34, 'join()');
INSERT INTO options (question_id, options) VALUES (34, 'append()');
INSERT INTO options (question_id, options) VALUES (34, 'replace()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'split()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'join()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'replace()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which Python keywords are used for loops?');
INSERT INTO options (question_id, options) VALUES (35, 'for');
INSERT INTO options (question_id, options) VALUES (35, 'while');
INSERT INTO options (question_id, options) VALUES (35, 'do');
INSERT INTO options (question_id, options) VALUES (35, 'repeat');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (35, 'for');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (35, 'while');

-- Data Analysis with Pandas Quiz Questions (QuizId = 8)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'SINGLE_CHOICE', 'Which Python library is used for data analysis?');
INSERT INTO options (question_id, options) VALUES (36, 'numpy');
INSERT INTO options (question_id, options) VALUES (36, 'pandas');
INSERT INTO options (question_id, options) VALUES (36, 'matplotlib');
INSERT INTO options (question_id, options) VALUES (36, 'scipy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (36, 'pandas');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'SINGLE_CHOICE', 'Which method is used to read a CSV file in Pandas?');
INSERT INTO options (question_id, options) VALUES (37, 'read_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'load_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'import_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'open_csv()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (37, 'read_csv()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which Pandas methods are used for data cleaning?');
INSERT INTO options (question_id, options) VALUES (38, 'dropna()');
INSERT INTO options (question_id, options) VALUES (38, 'fillna()');
INSERT INTO options (question_id, options) VALUES (38, 'replace()');
INSERT INTO options (question_id, options) VALUES (38, 'strip()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'dropna()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'fillna()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'replace()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which data structures are provided by Pandas?');
INSERT INTO options (question_id, options) VALUES (39, 'DataFrame');
INSERT INTO options (question_id, options) VALUES (39, 'Series');
INSERT INTO options (question_id, options) VALUES (39, 'Panel');
INSERT INTO options (question_id, options) VALUES (39, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (39, 'DataFrame');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (39, 'Series');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which Pandas methods are used for data aggregation?');
INSERT INTO options (question_id, options) VALUES (40, 'groupby()');
INSERT INTO options (question_id, options) VALUES (40, 'pivot()');
INSERT INTO options (question_id, options) VALUES (40, 'sum()');
INSERT INTO options (question_id, options) VALUES (40, 'agg()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'groupby()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'pivot()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'agg()');

-- Machine Learning Basics Quiz Questions (QuizId = 9)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'SINGLE_CHOICE', 'Which library is commonly used for machine learning in Python?');
INSERT INTO options (question_id, options) VALUES (41, 'numpy');
INSERT INTO options (question_id, options) VALUES (41, 'pandas');
INSERT INTO options (question_id, options) VALUES (41, 'scikit-learn');
INSERT INTO options (question_id, options) VALUES (41, 'matplotlib');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (41, 'scikit-learn');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'SINGLE_CHOICE', 'Which is a supervised learning algorithm?');
INSERT INTO options (question_id, options) VALUES (42, 'K-means');
INSERT INTO options (question_id, options) VALUES (42, 'Linear Regression');
INSERT INTO options (question_id, options) VALUES (42, 'PCA');
INSERT INTO options (question_id, options) VALUES (42, 'Clustering');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (42, 'Linear Regression');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which algorithms are used for classification?');
INSERT INTO options (question_id, options) VALUES (43, 'Logistic Regression');
INSERT INTO options (question_id, options) VALUES (43, 'Decision Trees');
INSERT INTO options (question_id, options) VALUES (43, 'KNN');
INSERT INTO options (question_id, options) VALUES (43, 'Random Forest');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Logistic Regression');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Decision Trees');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'KNN');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Random Forest');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which metrics are used to evaluate classification models?');
INSERT INTO options (question_id, options) VALUES (44, 'Accuracy');
INSERT INTO options (question_id, options) VALUES (44, 'Precision');
INSERT INTO options (question_id, options) VALUES (44, 'Recall');
INSERT INTO options (question_id, options) VALUES (44, 'MAE');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Accuracy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Precision');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Recall');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which libraries are used for deep learning?');
INSERT INTO options (question_id, options) VALUES (45, 'TensorFlow');
INSERT INTO options (question_id, options) VALUES (45, 'Keras');
INSERT INTO options (question_id, options) VALUES (45, 'PyTorch');
INSERT INTO options (question_id, options) VALUES (45, 'OpenCV');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'TensorFlow');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'Keras');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'PyTorch');