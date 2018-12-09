class MainPageController < ApplicationController
  def index
    @students = Student.all
  end
  
  def bulletin_page
    @bulletins = Bulletin.all
  end
end

