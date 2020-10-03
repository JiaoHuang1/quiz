class AnswersController < ApplicationController
    def create
        @answer = Answer.new(answer_params)
        questionIdxs = Question.ids
        if @answer.save
            currentRouteId = answer_params[:questionId].split('/')[0]
            currentRouteIdIdx = questionIdxs.index(currentRouteId.to_i)
            if currentRouteIdIdx < questionIdxs.length - 1
                newRouteId = questionIdxs[currentRouteIdIdx + 1]
                redirect_to "/questions/#{newRouteId.to_s}"
            else
                render json: 'Done! Your information was sent perfectly.'
            end
        else
            render json: @answer.errors.full_messages, status: 422
        end      
    end

    private

    def answer_params
        params.require(:answer).permit(:questionId, :answerBody)
    end
end