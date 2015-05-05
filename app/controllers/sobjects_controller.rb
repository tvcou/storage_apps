class SobjectsController < ApplicationController

  def index
    @sobjects = Sobject.all
  end

  def show
    @sobject = Sobject.find(params[:id])
  end

end
