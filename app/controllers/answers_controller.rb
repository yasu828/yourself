class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @answers = Answer.all.order(id: "DESC")
    end

    def new
        @answer.Answer.new
    end

    def create
        @answer = Answer.new(answer_params)
        # render json:{answer: post }
        if @answer.save
            redirect_to root_path
        else
            render :index
        end
    end


    private

    def answer_params
        params.permit(:answer).merge(user_id: current_user.id)
    end
end
