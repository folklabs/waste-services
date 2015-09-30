# require 'wicked'

class MissedBinsController < ApplicationController
  include Wicked::Wizard

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Waste and Recycling", :root_path
  
  steps :find_address, :select_bins, :personal_details, :finish

  def show
    puts wizard_path(:select_bins)
    case step
    when :select_bins
      @services = Service.all
      # @service = @services[0]
    end

    render_wizard
  end
end
