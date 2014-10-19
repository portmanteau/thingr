class ItemsController < ApplicationController
  def index
    if request.xhr?
      render layout: false
    else
      render "index/index"
    end
  end
end
