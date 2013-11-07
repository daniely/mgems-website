class MgemsController < ApplicationController
  def index
    @mgems = Mgem.all
  end
end
