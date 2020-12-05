class AlcoholsController < ApplicationController
  
  def new
   @alcohol = Alcohol.new
  end
  
  def show
    @alcohol = Alcohol.find(params[:id])
  end
  
  def index
    # @alcohols = Alchol.all
    @search_params = alcohol_search_params
    @alcohols = Alcohol.search(@search_params)
  end
  
  def create
    @alcohol = Alcohol.new(alcohol_params)
    if @alcohol.save
      flash[:success] = '新規作成に成功しました。'
      redirect_to alcohols_url
    else
      render :new
    end
  end
  
  def edit 
    @alcohol = Alcohol.find(params[:id])
  end
  
  def update
    @alcohol = Alchol.find(params[:id])
    if @alcohol.update_attributes(alcohol_params)
      flash[:success] = "更新しました。"
      redirect_to alcohols_url
    else
      render :edit
      
    end
  end
  
  def destroy
    @alcohol = Alchol.find(params[:id])
    @alcohol.destroy
    flash[:success] = "#{@alcohol.name}を削除しました。"
    redirect_to alcohols_url
  end
  
   private

    def alcohol_params
      params.require(:alcohol).permit(:name, :price, :kind, :image, :character, :placephoto)
    end
    
    def alcohol_search_params
      params.fetch(:search, {}).permit(:name, :price, :image, :character, :kind, :placephoto)
    end
  
end
