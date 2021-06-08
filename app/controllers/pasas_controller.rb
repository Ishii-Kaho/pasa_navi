class PasasController < ApplicationController
  def index
    @pasas = Pasa.page(params[:page]).reverse_order
  end

  def show; end
end
