class Kyara3
	attr_reader :sw
	attr_reader :s
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@ch = Image.load_tiles("kozou.png",4,4)
		@kx = 820
		@ky = 140
		@x = 850
		@y = 503
		@a = 0
		@sw = -2
		@kai = 0
		@font = Font.new(32)
		@font1 = Font.new(64)
		@font2 = Font.new(128)
		@font3 = Font.new(16)
		@kaiwa =["次は防具を手に入れないと...","清水寺って聞いた気がするな。",""]
		@image = Image.load("map.png")
		@image.box_fill(70,350,600,500,[255,255,255])
		@image2 = Image.new(1000,700,[0,0,0])
		@ok = 0
	end
	def move2
		if Input.key_push?(K_RETURN) then
			@ok = 1
		end
		if @sw < 0 and Input.key_push?(K_K) and @ok == 1 then
			@kx = 820
			@ky = 140
			@sw = @sw + 1
			@kai = @kai + 1
		end
		if @sw == 0 and @x > 790 then
			@x -= 1
		elsif @sw == 0
			@sw = 6
		end
		if @sw == 6 and @y > 450 then
			@y -= 1
		elsif @sw == 6
			@sw = 7
		end
		if @sw == 7 and @x < 882 then
			@x += 1
		elsif @sw == 7
			@sw = 8
		end
		if @sw == 8 and @y > 390 then
			@y -= 1
		elsif @sw == 8
			@sw = 9
		end
	end
	def draw
		if @sw < 0 then
		Window.draw_scale(153,130,@image,1.65,1.6)
		end
		Window.draw(@x, @y, @char_tiles[@a])#@main_char
		if @sw < 0 then
		Window.draw_font(120,600,@kaiwa[@kai],@font,color:[220,0,0])
		Window.draw_font(850,670,"Kで次へ",@font3,color:[220,0,0])
		end
		#Window.draw_scale(45, 610, @ch[1],3,3)
		if @ok == 0 then
		Window.draw(0,0,@image2)
		Window.draw_font(400,200,"第二章",@font1,color:[220,0,0])
		Window.draw_font(70,400,"～防具を探せ～",@font2,color:[220,0,0])
		Window.draw_font(750,640,"Enterキーで次へ",@font,color:[220,0,0])
		end
	end
end
