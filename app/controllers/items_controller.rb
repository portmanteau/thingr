class ItemsController < ApplicationController
  def index
    if request.xhr?
      render layout: false and return
    else
      render "index/index"
    end
  end
end
