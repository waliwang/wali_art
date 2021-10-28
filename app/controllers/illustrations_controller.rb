class IllustrationsController < ApplicationController
    def index
        @illustrations = Illustration.all
    end

    def new
        @illustration = Illustration.new
    end

    def create
        @illustration = Illustration.new(illustration_params)

        if @illustration.save
            redirect_to illustrations_path, notice: "新增作品成功！"
        else
            render :new
        end
    end

    def edit
        @illustration = Illustration.find_by(id: params[:id])
    end

    def update
        @illustration = Illustration.find_by(id: params[:id])

        if @illustration.update(illustration_params)
            redirect_to illustrations_path, notice: "作品資料更新成功！"
        else
            render :edit
        end
    end

    def destroy
        @illustration = Illustration.find_by(id: params[:id])
        @illustration.destroy if @illustration
        redirect_to illustrations_path, notice: "作品資料已刪除！"
    end

    def show
    end


    def destroy
        @illustration = Illustration.find_by(id: params[:id])
        @illustration.destroy if @illustration
        redirect_to illustrations_path, notice: "作品資料已刪除！"
        # render html: "destroy"
    end

    private
    def illustration_params
        params.require(:illustration).permit(:name, :description, :years, :label, :image)
    end

end
