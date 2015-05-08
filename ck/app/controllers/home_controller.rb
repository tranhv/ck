class HomeController < ApplicationController
	def index
    @data_companies = Company.all
	end
end
