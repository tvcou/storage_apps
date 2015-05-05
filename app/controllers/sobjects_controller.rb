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

end
