class PollsController < ApplicationController
  def start
    @tabulations = Tabulation.where(survey_id: params[:id])
    @survey = Survey.find(params[:id])
    
  end

  def vote
    params.each do |key, value| 
    # target groups using regular expressions
      if (key.to_s[/question.*/])
       # whatever logic you need for params that start with 'setname1'
        if params[key].blank?
           #@object.errors.add_to_base("All setname1 fields are required.").
           logger.info "Oops"
        else
          #logger.info("test: #{params[key].inspect}")
          @tabulation = Tabulation.where(survey_id: params[key][:survey_id],
          question_id: params[key][:question_id],
          option_id: params[key][:option_id] ).first
          @tabulation.increment!(:count)
        end
      end
    end
    # Write Participant record
    redirect_back
  end

  def result
  end
end
