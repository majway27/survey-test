Survey.create(name: "1test")

@survey = Survey.first

@survey.questions.create(text: "S1Q1")
@survey.questions.first.options.create(text: "S1Q1C1") 
@survey.questions.first.options.create(text: "S1Q1C2") 
@survey.questions.first.options.create(text: "S1Q1C3")

@survey.questions.create(text: "S1Q2")
@survey.questions.second.options.create(text: "S1Q2C1")
@survey.questions.second.options.create(text: "S1Q2C2")
@survey.questions.second.options.create(text: "S1Q2C3")

@survey.questions.create(text: "S1Q3")
@survey.questions.third.options.create(text: "S1Q3C1")
@survey.questions.third.options.create(text: "S1Q3C2")
@survey.questions.third.options.create(text: "S1Q3C3")

# Option.all.select(:id, :text).each {|e| puts e.inspect }

