class SobjectsController < ApplicationController

  def index
    @sobjects = Sobject.all
  end

  def show
    @sobject = Sobject.find(params[:id])
  end

  def new
    @p_sobject = Sobject.find(params[:pid])
    @sobject = Sobject.new
    if @p_sobject.id > 0 then
      @sobject.pid = @p_sobject.id
    end
  end

  def create
    @sobject = Sobject.new(sobject_params)
    @sobject.save
    redirect_to sobjects_path
  end

  private
    def sobject_params
      params.require(:sobject).permit(:name,:pid,:type_id)
    end

end
