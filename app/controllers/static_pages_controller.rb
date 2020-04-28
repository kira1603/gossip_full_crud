class StaticPagesController < ApplicationController
  before_action :authentificate_user!, only: [:private]

  def home
  end

  def private
  end
end
