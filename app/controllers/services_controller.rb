class ServicesController < ApplicationController
  def index
    puts 'index'
    @services = Service.all
    puts @services.to_yaml
  end
end
