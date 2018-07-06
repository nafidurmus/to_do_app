class HomeController < ApplicationController

	def trash
		@trash = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: 'Bitmiş olan Yapılacaklar silindi.'
	end

	def trash_all
		@trash_all = List.all.destroy_all
		redirect_to lists_url, notice: 'Bütün liste silindi.'
	end



end