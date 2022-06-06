class HomeController < ApplicationController
  
  def index
  	lines = Array.new
  	lines2 = Array.new

	File.open(Rails.root.join('storage', 'db.txt')).each { |line| lines << line }
  	
	count = 0
	array_tmp = Array.new
  	(1..1000).each do |va|
  		if lines2.count <= 10
	  		count = count + 1

	  		va1 = lines[rand(100..50000)].gsub("\;\n","")
	  		if count <= 5
	  			array_tmp << va1
	  		else
	  			lines2 << array_tmp
	  			count = 0
	  			array_tmp = Array.new
	  		end
	  	end
  	end
  	@json = lines2
  	@info_video_json = ";Videos porno gratis, Free porn, Sex;;;;porn,sex,videos,xvideos,+18,erotic"
  end

end
