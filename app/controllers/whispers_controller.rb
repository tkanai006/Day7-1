class WhispersController < ApplicationController
    before_action :set_whisper, only:[:show, :edit, :update, :destroy]
    def index
        @whispers = Whisper.order(updated_at: :desc)
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
                # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
                redirect_to new_whisper_path, notice: "ブログを作成しました！"
            else
                # 入力フォームを再描画します。
                render 'new'
            end
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
        @whisper.destroy
        redirect_to whispers_path, notice: "ツイートを削除しました！"
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
