class SearchesController < ApplicationController
  def search
    @range = params[:range]
    search = params[:search]
    word = params[:word]
    @word = params[:word]

    if @range == 'pasa'
      @pasa = Pasa.search(search, word)
    else
      @post = Post.search(search, word)
    end
  end
end
