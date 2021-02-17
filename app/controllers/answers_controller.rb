class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @answers = Answer.all.order(id: "DESC")
    end


    def create
        @answer = Answer.create(answer_params)
        render json:{post: @answer}
    end


    private

    def answer_params
        params.permit(:answer).merge(user_id: current_user.id)
    end
end
