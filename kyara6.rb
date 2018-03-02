class Kyara6
	attr_reader :sw
	attr_reader :hi
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@char_tiles1 = Image.load_tiles("maou.png",3,4)
		@x = 1000
		@y = 490
		@xx = 250
		@yy = 300
		@hx = 400
		@hy = 190
		@kx = 700
		@ky = 100
		@a = 3
		@b = 6
		@hi = -1
		@image = Image.load("mao.png")
		@image1 = Image.load("ken.png")
		@image2 = Image.load("hi.png")
		@oo = 0
		@font = Font.new(32)
		@font1 = Font.new(128)
		@font3 = Font.new(16)
		@image3 = Image.new(840,200,[255,255,255])
		@image4 = Image.new(1000,700,[0,0,0])
	end
	def move
		if @hi == -1 and @x > 900 then
			@x -= 1
		elsif @hi == -1 then
			@hi = 0
		end
		if Input.key_push?(K_K) and @hi > -1 then
			@hi = 1
		end
		if @hi == 1 and @hx < 800 then
			@hx += 2
			@hy += 1
		elsif @hi == 1 then
			@hi = 2
		end
		if @hx == 640 then
			@y = 300
			@oo = 1
		end
		if @oo > 0 and @oo < 70 then
			@oo += 1
		end
		if @oo == 70  and @hi < 3 then
			@x = 400
			@kx = 200
			@hi = 3
		end
		if @hi > 2 and @hi < 15 then
			@hi = @hi + 1
		end
		if @hi == 15 and @yy < 920 then
			@yy += 2
		elsif @hi == 15 then
			@hi = 16
		end
		if @hi >= 16 and Input.key_push?(K_RETURN) then
			@hi += 1
		end
	end
	def draw
		Window.draw_scale(340,240,@image,3.15,3)
		if @oo > 0 then
			Window.draw(@kx,@ky,@image1)
		end
		Window.draw_scale(@xx, @yy, @char_tiles1[@b],7,7)
		Window.draw(@x, @y, @char_tiles[@a])
		if @hi == 1 then
			Window.draw(@hx,@hy,@image2)
		end
		if @hi == 0 then
		Window.draw(70,530,@image3)
		Window.draw_font(120,600,"オマエが魔王か倒してやる",@font,color:[220,0,0])
		Window.draw_font(850,670,"Kで次へ",@font3,color:[220,0,0])
		end
		if @hi == 16 then
			Window.draw(0,0,@image4)
		Window.draw_font(260,200,"おわり♡",@font1,color:[220,0,0])
		end
	end
end
