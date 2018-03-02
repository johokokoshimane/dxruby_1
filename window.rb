class BackWindow99
	attr_reader :image3, :image4
	def initialize
		Window.width = 1000
		Window.height = 700
		@image = Image.new(1000,700,[255,255,255])
		@image2 = Image.load("taitoru.png")
		@x = 370
		#ボタン
		
		@image3 = Button.new(370, 330, Image.load("はじめから.png"))
		@image4 = Button.new(370, 440, Image.load("終了する.png"))
		
	end	
	def draw
		Window.draw(0,0,@image)	
		Window.draw_scale(100,50,@image2,1.25,1.2)	
		#ボタン
		#Window.draw(370,330,@image3)
		@image3.draw
		@image3.scale_x = 1
		@image3.scale_y = 1
		#Window.draw(370,440,@image4)
		@image4.draw
		@image4.scale_x = 1
		@image4.scale_y = 1
		
		
	end
	def images
		return [@image3,@image4]
	end

end
