class Kyara8
	attr_reader :hi
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@char_tiles1 = Image.load_tiles("osyo.png",3,4)
		@image = Image.load("mao.png")
		@x = 900
		@y = 490
		@xx = 100
		@yy = 490
		@g = 7
		@a = 1
		@font = Font.new(32)
		@font3 = Font.new(16)
		@image1 = Image.new(1000,700,[255,255,255])
		@image3 = Image.new(840,200,[255,255,255])
		@hi = 0
		@kai = ["おぬしが勇者か","その腕前試させてもらおう",""]
		@kkai = ["","おぬしの実力は本物じゃ","魔王を倒してこい！",""]
		@k = 0
	end
	def move
		if Input.key_push?(K_K) and @hi < 2 then
			@hi += 1
		end
		if @hi == 2 and @x > 520 then
			@x -= 2
			@xx += 2
		elsif @hi == 2 then
			@hi = 3
		end
		if Input.key_push?(K_K) and @hi == 3 then
			@hi = 4
			@g = 4
#			@yy = 510
		end
		if Input.key_push?(K_K) and @hi > 3 then
			@hi += 1
			@k += 1
		end
		
	end
	def draw
		Window.draw_scale(340,240,@image,3.15,3)
		if @hi < 2 then
		Window.draw(70,530,@image3)
		Window.draw_font(120,600,@kai[@hi],@font,color:[220,0,0])
		Window.draw_font(850,670,"Kで次へ",@font3,color:[220,0,0])
	end
	if @hi < 7 and @hi > 4 then
		Window.draw(70,530,@image3)
		Window.draw_font(120,600,@kkai[@k],@font,color:[220,0,0])
		Window.draw_font(850,670,"Kで次へ",@font3,color:[220,0,0])
	end
		Window.draw(@x, @y, @char_tiles[5])
		Window.draw_scale(@xx, @yy, @char_tiles1[@g],2,2)
		if @hi == 3 then
			Window.draw(0,0,@image1)
		end
	end
end
