class Kyara
	attr_reader :sw
	attr_reader :s
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@ch = Image.load_tiles("kozou.png",4,4)
		@kx = 820
		@ky = 140
		@a = 0
		@sw = -2
		@kai = 0
		@font = Font.new(32)
		@font1 = Font.new(64)
		@font2 = Font.new(128)
		@font3 = Font.new(16)
		@kaiwa =["まずは武器を手に入れないと...","和光博物館にならあるかもしれない",""]
		@image = Image.load("map.png")
		@image.box_fill(70,350,600,500,[255,255,255])
		@image2 = Image.new(1000,700,[0,0,0])
		@ok = 0
	end
	def move1
		if Input.key_push?(K_RETURN) then
			@ok = 1
		end
		if @sw < 0 and Input.key_push?(K_K) and @ok == 1 then
			@kx = 820
			@ky = 140
			@sw = @sw + 1
			@kai = @kai + 1
		end
		if @sw == 0 and @kx < 850 then
		@kx += 1
		elsif @sw == 0
		@sw = 1
		end
		if @sw == 1 and @ky < 320 then
			@ky += 1
		elsif @sw == 1
			@sw = 2
		end
		if @sw == 2 and @kx > 790 then
			@kx -= 1
		elsif @sw == 2
			@sw = 3
		end
		if @sw == 3 and @ky < 503 then
			@ky += 1
		elsif @sw == 3
			@sw = 4
		end
		if @sw == 4 and @kx < 850 then
			@kx += 1
		elsif @sw == 4
			@sw = 5
			@s = 2
		end
	end
	def draw
		if @sw < 0 then
		Window.draw_scale(153,130,@image,1.65,1.6)
		end
		Window.draw(@kx, @ky, @char_tiles[@a])#@main_char
		if @sw < 0 then
		Window.draw_font(120,600,@kaiwa[@kai],@font,color:[220,0,0])
		Window.draw_font(850,670,"Kで次へ",@font3,color:[220,0,0])
		end
		#Window.draw_scale(45, 610, @ch[1],3,3)
		if @ok == 0 then
		Window.draw(0,0,@image2)
		Window.draw_font(400,200,"第一章",@font1,color:[220,0,0])
		Window.draw_font(70,400,"～武器を探せ～",@font2,color:[220,0,0])
		Window.draw_font(750,640,"Enterキーで次へ",@font,color:[220,0,0])
		end
	end
end
