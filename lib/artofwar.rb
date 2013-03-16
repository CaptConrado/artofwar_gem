require "artofwar/version"


module Artofwar
  def self.passage
  		text = File.read('artwar.1b.txt')
		chapters = []
		lined_text = []

		text = text.split('----------------------------------------------------------------------').shift
		text_array = text.split("\n\n")
		text_array.pop
		
		3.times do
			text_array.shift
		end

		text_array.each do |thing|
			if thing =~ /\d/
				line = "#{thing}"
				lined_text.push(line)
			else
				chap_titles = "Chapter #{thing}"
				chapters.push(chap_titles)
			end
		end

		# puts chapters
		@passage = lined_text.sample
		puts @passage
	end
end

