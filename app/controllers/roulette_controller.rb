class RouletteController < ApplicationController
  before_action :authenticate_user!, except: [ :index]

  def index

  end

  def test

  end
end
