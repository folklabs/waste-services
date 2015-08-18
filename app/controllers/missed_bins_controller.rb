# require 'wicked'

class MissedBinsController < ApplicationController
  include Wicked::Wizard
  
  steps :find_address, :select_bins, :personal_details, :finish

  def show
    puts wizard_path(:select_bins)
    case step
    when :select_bins
      conn = Faraday.new(:url => ENV[WASTE_API_URL]) do |faraday|
        faraday.request :json

        faraday.response :json, :content_type => /json$/

        # faraday.use :instrumentation
        faraday.adapter Faraday.default_adapter
      end
      response = conn.get '/waste/services'
      puts response.body
      puts 'select_bins'
      @service = Hashie::Mash[response.body]
      puts @service
    end
    render_wizard
  end
end
