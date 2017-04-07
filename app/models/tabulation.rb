class Tabulation < ApplicationRecord
  belongs_to :survey
  belongs_to :question
  belongs_to :option
  
  def self.generate_tabs(survey_id)
    if Tabulation.where(survey_id: survey_id).count < 1
      n=0
      # Locate particular survey by id
      @survey = Survey.find(survey_id)
      # Build tab rows, 9 total
      @survey.questions.ids.each do |q|
        #puts "Question ID: #{q}"
        @survey.questions.find(q).options.ids.each do |c|
          #puts "Option ID: #{c}"
          Tabulation.create!(
          survey_id: @survey.id,
          question_id: @survey.questions.find(q).id, 
          option_id: @survey.questions.find(q).options.find(c).id,
          count: 0)
        end
      end # End Outer Loop
    end # End IF
  end # End Method Def
  
end
