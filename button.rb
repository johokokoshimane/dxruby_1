class Button < Sprite
	attr_reader :k
	def initialize(x, y, image)
		@k = 0
		super(x, y, image)
	end
	
	def hit(other)
		self.scale_x = 1.3
		self.scale_y = 1.3
		if Input.mouse_push?(M_LBUTTON)
			@k = 1
		end
	end
	
end