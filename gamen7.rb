
class BackWindow7


	def initialize
	
		Window.width = 1000
		Window.height = 700
		@image = Image.new(1000,700,Color::SKYBLUE)
		@image2 = Image.load("map.png")
		#@image3 = Image.load("huki.png")
		@font = Font.new(32)
		#@image2.box_fill(100,400,500,500,[255,255,255])
	end
	def draw
		Window.draw(0,0,@image)
		Window.draw_scale(153,130,@image2,1.65,1.6)
		#Window.draw_scale(500,100,@image3,0.7,0.7)
		#Window.draw_font(120, 640,"                     こんにちは",@font, color:[220,0,0])
	end

end