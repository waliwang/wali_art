class IllustrationsController < ApplicationController
    before_action :find_illustration, only: [:edit, :update, :destroy, :show]
    def index
        @illustrations = Illustration.all
    end

    def create
        @illustration = Illustration.new(illustration_params)

        if @illustration.save
            #成功
            redirect_to admin_illustrations_path, notice: "新增作品成功！"
        else
            #失敗
            render :new
        end
    end

    def edit
    end

    def update
        if @illustration.update(illustration_params)
            redirect_to admin_illustrations_path, notice: "作品資料更新成功！"
        else
            render :edit
        end
    end

    def destroy
        @illustration.destroy if @illustration
        redirect_to admin_illustrations_path, notice: "作品資料已刪除！"
        # render html: "destroy"
    end

    


    private
    def illustration_params
        params.require(:illustration).permit(:title, :content, :years, :label, :image)
    end

    def find_illustration
        @illustration = Illustration.find_by(id: params[:id])
    end

end
