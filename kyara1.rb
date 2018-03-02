class Kyara1
	attr_reader :s
	def initialize
		@char_tiles = Image.load_tiles("yusya.png",3,4)
		@x = 460
		@y = 140
		@a = 1
		@kaiwa =["こ、ここは？","封印したはずの魔王の祠が壊れている！！","倒しに行かなければ",""]
		@font = Font.new(32)
		@font1 = Font.new(16)
		@kaiwa_c = 0
		@image1 = Image.load("遺跡.png")
		@image = Image.load("遺跡.png")
		@image.box_fill(70,235,410,290,[255,255,255])
		@kesu = 0
		@st = 0
		@s = 0
		@teki = 0
		@ugo = 0
	end
	def move
		if @kaiwa_c < 3 and Input.key_push?(K_K) then
			@kaiwa_c = @kaiwa_c + 1
		end
		if @kaiwa_c == 3 then
			@st = 1
		end
		if @st == 1 and @teki < 20 then
			@teki = @teki + 1
		end
		if @teki > 19 then
			@ugo = 1
		end
		if @st == 1  and @y < 650 and @ugo == 1 then
			@y = @y + 3
		end
		if @y >= 650 then
			@s = 1
		end
		if @kaiwa_c == 3 then
			@kesu = 1
		end
	end
	def draw
		Window.draw_scale(240,240,@image1,2.5,2.5)
		if @st == 0 then
		Window.draw_scale(240,240,@image,2.5,2.5)
		end
		Window.draw(@x, @y, @char_tiles[@a])
		if @st == 0 then
		Window.draw_font(850,670,"Kで次へ",@font1,color:[220,0,0])
		end
		if @st == 0 then
		Window.draw_font(120,600,@kaiwa[@kaiwa_c],@font,color:[220,0,0])
		end
	end
end
