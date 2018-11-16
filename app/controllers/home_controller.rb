class HomeController < ApplicationController
  def index
    @models = Model.order(name: :asc)
  end
end
