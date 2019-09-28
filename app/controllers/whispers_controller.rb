class WhispersController < ApplicationController
    before_action :set_whisper, only:[:edit, :update, :destroy]
    def index
        @whispers = Whisper.order(updated_at: :desc)
        @tweet_count = Whisper.count
    end

    def new
        @whisper = Whisper.new
    end

    def create
        @whisper = Whisper.new(whisper_params)
        if params[:back]
            render 'new'
        else
            if @whisper.save
                redirect_to new_whisper_path, notice: "ツイートを投稿しました。"
            else
                render 'new' if @contact.invalid?
            end
        end
    end

    def edit
    end

    def show
    end

    def update
        if @whisper.update(whisper_params)
            redirect_to whispers_path, notice: "ツイートを編集しました。"
          else
            render :edit
          end
    end

    def destroy
        @whisper.destroy
        redirect_to whispers_path, notice: "ツイートを削除しました。"
    end

    def confirm
        @whisper = Whisper.new(whisper_params)
        render :new if @whisper.invalid?
    end

    private

    def whisper_params
        params.require(:whisper).permit(:content)
    end

    def set_whisper
        @whisper = Whisper.find(params[:id])
    end
end
