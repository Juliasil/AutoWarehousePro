class HomeController < ApplicationController
  def index
    @autowarehousepros = AutoWarehousePro.all
  end
end