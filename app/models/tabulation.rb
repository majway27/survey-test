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
      @survey.questions.each do |q|
        @survey.questions.find(q).choices.each do |c|
          puts "test"
        end
      end
      3.times do
        #logger.info "test: #{n += 1}"
        
      end
    end
  end
  
end
