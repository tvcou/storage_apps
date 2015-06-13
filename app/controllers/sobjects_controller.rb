class SobjectsController < ApplicationController

  def index
    @sobjects = Sobject.all
  end

  def show
    @sobject = Sobject.find(params[:id])
    @csobjects = Sobject.where(pid: params[:id])
  end

  def new
    @sobject = Sobject.new
    unless params[:pid].blank?
      @p_sobject = Sobject.find(params[:pid])
      @sobject.pid = @p_sobject.id
    end
  end

  def create
    @sobject = Sobject.new(sobject_params)
    @sobject.save
    redirect_to sobjects_path
  end

  def destroy
    @sobject = Sobject.find(params[:id])
    @sobject.destroy
    redirect_to sobjects_path
  end

  private
    def sobject_params
      params.require(:sobject).permit(:name,:pid,:type_id)
    end

end
