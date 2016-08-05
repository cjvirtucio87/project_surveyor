# project_surveyor
Build it, take it, view it.

[A Ruby on Rails project from the Viking Code School which uses Active Record Associations, nested forms, collection forms, range fields, and PostgreSQL](https://www.vikingcodeschool.com)


Models:
1. Survey 
2. Question
3. Option
4. QuestionType
- radio_button

Survey has_many questions, through: SurveyQuestion
Question has_many surveys, through: SurveyQuestion
SurveyQuestion(join_table) belongs_to each of them

# How to create one of each?
survArr[s1,s2] = Survey.create!
qArr[q1,q2,q3,q4] = Question.create!

2.times do
  s1.questions << qArr.sample
end

2.times do
  s2.questions << qArr.sample
end

Question has_many options
Option belongs_to questions

# How to create MCQ and Options?
q = Question.create!
q.options.build(attributes..)


QuestionType has_many questions
Question belongs_to QuestionType