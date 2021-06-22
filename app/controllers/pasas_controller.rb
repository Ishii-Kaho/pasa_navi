class PasasController < ApplicationController
  def index
    @pasas = Pasa.page(params[:page]).reverse_order
  end

  def show
    @pasa = Pasa.find(params[:id])
    @posts = @pasa.posts
  end

  def autocomplete_facility
    # params[:cfacility]の値でPasa.facilityを前方一致検索、facility列だけ取り出し、nilと空文字を取り除いた配列
    facilities = Pasa.by_facility_like(autocomplete_params[:facility]).pluck(:facility).reject(&:blank?)
    render json: facilities
  end

  private

  def autocomplete_params
    params.permit(:facility)
  end
end
