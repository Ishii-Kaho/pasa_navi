class SearchesController < ApplicationController
  def search
    @range = params[:range]
    @word = params[:word]

    if @range == '1'
      @pasa = Pasa.search(search,@word)
    else
      @post = Post.search(search,@word)
    end
  end
end