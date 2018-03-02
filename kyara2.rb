class Kyara2
	attr_reader :sw
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@char1_tiles = Image.load_tiles("kantyo.png",6,4)
		@x = 780
		@y = 300
		@speed = 3
		@a = 1
		@sw = 0
		@image = Image.load("wako.png")
		@koudou = 1
		@kan = 1000
		@kaiwa = 0
		@hanasi = -1
		@kaiwa_a = ["おぬしが勇者じゃな","はい","これをソナタに授けよう","ありがとうございます","たたら剣をゲットした！！",""]
		@font = Font.new(32)
		@font1 = Font.new(16)
		@image1 = Image.load("wako.png")
		@image1.box_fill(80,700,1170,950,[255,255,255])
	end
	def move
		if @koudou == 1 then
		if Input.x > 0 then
			@a = 6
			@x += Input.x * @speed
		elsif Input.x < 0 then
			@a = 3
			@x += Input.x * @speed
		end
		if Input.y > 0 then
			@a = 0
			@y += Input.y * @speed
		elsif Input.y < 0 then
			@a = 9
			@y += Input.y * @speed
		end
	#else
		#@a = 6
	end
	if @koudou == 0 and @kan > 900 then
		@a = 6
		@kan = @kan - 1
	end
	if @kan == 900 and @x < 780 and @koudou == 0 then
		@a = 6
		@x = @x + 2
	end
	if @x == 780 and @koudou == 0 and @y < 500 then
		@a = 0
		@y = @y + 1
	end
	if @x == 780 and @koudou == 0 and @y == 500  and @kaiwa == 0 then
		@a = 6
		@kaiwa = 1
		@hanasi = 0
	end
		@x = 200 and @koudou = 0 if @x < 200
		@x = 780 if @x > 780
		@y = 290 if @y < 290
		@y = 500 if @y > 500
		if @kaiwa == 1 then
			if Input.key_push?(K_K) then
				@hanasi = @hanasi + 1
			end
			if @hanasi == 5 then
				@kaiwa = 0
				@sw = 1
			end
		end
	end
	def draw
		Window.draw_scale(-130,-100,@image,0.8,0.8)
		if @hanasi != -1 and @kaiwa == 1 then
			Window.draw_scale(-130,-100,@image1,0.8,0.8)
			Window.draw_font(120,600,@kaiwa_a[@hanasi],@font,color:[220,0,0])
			Window.draw_font(850,670,"Kで次へ",@font1,color:[220,0,0])
		end
		Window.draw(@x, @y, @char_tiles[@a])
		if @koudou == 0 then
			Window.draw(@kan, 490, @char1_tiles[6])
		end
	end
end
