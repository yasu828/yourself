class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @answer = Answer.new(answer_params)
        @right_answer = RightAnswer.new(right_answer_params)
        @room = Room.find(params[:room_id])
        @answers = @room.answers.includes(:user)
        
        @right_answers = @room.right_answers.includes(:user)
    end

    def new
    end


    def create
        
        @room = Room.find(params[:room_id])
        if @room.answers.create(
            user_id: current_user.id,
            ans: answer_params[:answer][:ans]
          )
          render json:{post: post }
        #   redirect_to room_answers_path(@room)
        else
            @answers = @room.ans.includes(:user)
            render :index
        end
        #     render json:{post: @answer}
        #   redirect_to root_path(@room)
        # else
        #     @messages = @room.messages.includes(:user)
        #   render :index
        # end
    end


    private

    def answer_params
        params.permit(:room_id, answer:[:ans]).merge(user_id: current_user.id)
    end

    def right_answer_params
        params.permit(:room_id, right_answer:[:rightans]).merge(user_id: current_user.id)
    end

end
