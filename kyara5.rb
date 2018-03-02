class Kyara5
	attr_reader :sw
	attr_reader :s
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@ch = Image.load_tiles("kozou.png",4,4)
		@kx = 820
		@ky = 140
		@x = 882
		@y = 390
		@a = 0
		@sw = -2
		@kai = 0
		@font = Font.new(32)
		@font1 = Font.new(64)
		@font2 = Font.new(128)
		@font3 = Font.new(16)
		@kaiwa =["情報科学の校長に呼ばれたな","なにをするんだろう...",""]
		@image = Image.load("map.png")
		@image.box_fill(70,350,600,500,[255,255,255])
		@image2 = Image.new(1000,700,[0,0,0])
		@ok = 0
	end
	def move3
		if Input.key_push?(K_RETURN) then
			@ok = 1
		end
		if @sw < 0 and Input.key_push?(K_K) and @ok == 1 then
			@kx = 820
			@ky = 140
			@sw = @sw + 1
			@kai = @kai + 1
		end
		if @sw == 0 and @y < 450 then
			@y += 1
		elsif @sw == 0
			@sw = 10
		end
		if @sw == 10 and @x > 695 then
			@x -= 1
		elsif @sw == 10
			@sw = 11
		end
		if @sw == 11 and @y > 403 then
			@y -= 1
		elsif @sw == 11
			@sw = 12
		end
		if @sw == 12 and @x > 474 then
			@x -= 1
		elsif @sw == 12
			@sw = 13
		end
		if @sw == 13 and @y < 494 then
			@y += 1
		elsif @sw == 13
			@sw = 14
		end
		if @sw == 14 and @x > 329 then
			@x -= 1
		elsif @sw == 14
			@sw = 15
		end
		if @sw == 15 and @y < 565 then
			@y += 1
		elsif @sw == 15
			@sw = 16
		end
		if @sw == 16 and @x > 145 then
			@x -= 1
		elsif @sw == 16
			@sw = 17
		end
		if @sw == 17 and @y < 655 then
			@y += 1
		elsif @sw == 17
			@sw = 18
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
		Window.draw_font(400,200,"第四章",@font1,color:[220,0,0])
		Window.draw_font(70,400,"～腕試し？？～",@font2,color:[220,0,0])
		Window.draw_font(750,640,"Enterキーで次へ",@font,color:[220,0,0])
		end
	end
end
