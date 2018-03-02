class Kyara4
	attr_reader :sw
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@char_tiles1 = Image.load_tiles("kantyo.png",6,4)
		@x = 900
		@y = 490
		@xx = -30
		@yy = 470
		@a = 1
		@b = 12
		@image = Image.load("清水寺.png")
		@ok = 0
		@sw = 0
		@image1 = Image.new(840,200,[255,255,255])
		@font = Font.new(32)
		@font3 = Font.new(16)
		@kaiwa = ["おぬしが勇者じゃな","はい","あなたは和光博物館の館長？？","あやつとは双子なのじゃ","というわけでわしがここ清水寺の和尚じゃ","防具を探しに来たのじゃな?","はい","ではこれを授けよう","防具を手に入れた！"]
		@kai = 0
	end
	def move
		if Input.key_push?(K_K) and @ok == 0 then
			@ok = 1
		end
		if @ok == 1 and @x > 700 and @sw== 0 then
			@a = 3
			@x -= 1
		elsif @ok == 1 and @sw == 0
			@sw = 1
		end
		if @sw == 1 and @xx < 200 then
			@xx += 1
		elsif @sw == 1
			@sw = 2
		end
		if Input.key_push?(K_K) and @sw == 2 then
			@kai += 1
		end
		if @kai == 8 then
			@sw = 3
		end
		if @sw == 3 and @xx < 672 then
			@xx += 1
		elsif @sw == 3 then
			@sw = 4
			@kai + 1
		end
		if @sw == 4 and Input.key_push?(K_K) and @xx == 672 then
			@sw = 5
		end
	end
	def draw
		Window.draw_scale(170,100,@image,1.6,1.6)
		if @ok == 0 then
			Window.draw(60,530,@image1)
			Window.draw_font(120,600,"ここが清水寺･･･",@font,color:[220,0,0])
			Window.draw_font(830,670,"Kで次へ",@font3,color:[220,0,0])
		end
		if @sw > 0 then
			Window.draw(@xx, @yy, @char_tiles1[@b])
		end
		if @sw == 2 then
			Window.draw(60,530,@image1)
			Window.draw_font(120,600,@kaiwa[@kai],@font,color:[220,0,0])
			Window.draw_font(830,670,"Kで次へ",@font3,color:[220,0,0])
		end
		if @sw == 4 then
			Window.draw(60,530,@image1)
			Window.draw_font(120,600,@kaiwa[@kai],@font,color:[220,0,0])
			Window.draw_font(830,670,"Kで次へ",@font3,color:[220,0,0])
		end
		Window.draw(@x, @y, @char_tiles[@a])
	end
end
