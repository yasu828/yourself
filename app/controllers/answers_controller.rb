class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @answer = Answer.new(answer_params)
        @room = Room.find(params[:room_id])
        @answers = @room.answers.includes(:user)
    end

    def new
    end

    def create
        
        @room = Room.find(params[:room_id])
        if @room.answers.create(
            user_id: current_user.id,
            ans: answer_params[:answer][:ans],
            point: answer_params[:answer][:point]
          )
          redirect_to root_path
        else
            @answers = @room.ans.includes(:user)
            render :index
        end
    end

    private

    def answer_params
        params.permit(:room_id, answer:[:ans], answer:[:point]).merge(user_id: current_user.id)
    end
end