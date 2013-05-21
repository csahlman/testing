class SearchesController < ApplicationController

  def create
    search = params[:search][:search].gsub(/#/, '')
    redirect_to search_path(search)
  end

  def show
    @search_results = Searcher.new("##{params[:id]}")
  end

end