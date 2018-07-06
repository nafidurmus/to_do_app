class HomeController < ApplicationController

	def trash_em
		@trash_em = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: 'Bitmiş olan Yapılacaklar silindi.'
	end

	def trash_em_all
		@trash_em_all = List.all.destroy_all
		redirect_to lists_url, notice: 'Bütün liste silindi.'
	end



end