require 'dxruby'
require_relative 'color'
require_relative 'gamen'
require_relative 'gamen2'
require_relative 'gamen3'
require_relative 'gamen4'
require_relative 'gamen5'
require_relative 'gamen6'
require_relative 'gamen7'
require_relative 'gamen8'
require_relative 'kyara'
require_relative 'kyara1'
require_relative 'kyara2'
require_relative 'kyara3'
require_relative 'kyara4'
require_relative 'kyara5'
require_relative 'kyara6'
require_relative 'kyara7'
require_relative 'kyara8'
require_relative 'button'

backwindow = BackWindow.new
backwindow2 = BackWindow2.new
backwindow3 = BackWindow3.new
backwindow4 = BackWindow4.new
backwindow5 = BackWindow5.new
backwindow6 = BackWindow6.new
backwindow7 = BackWindow7.new
backwindow8 = BackWindow8.new
kya = Kyara.new
kya1 = Kyara1.new
kya2 = Kyara2.new
kya3 = Kyara3.new
kya4 = Kyara4.new
kya5 = Kyara5.new
kya6 = Kyara6.new
kya7 = Kyara7.new
kya8 = Kyara8.new

#class Count
#	FLG = 0
#end
require_relative "window"

backwindow99 = BackWindow99.new

# カーソルの準備
cursor_image = Image.new(10, 10, [255, 0, 255, 0])
cursor = Sprite.new(0, 0, cursor_image)


Window.loop do
	break if Input.key_push?(K_W)
	break if backwindow99.image4.k == 1
	if backwindow99.image3.k == 0 or kya6.hi == 17 then
	backwindow99.draw
	
	# ボタンの表示
	Sprite.draw([cursor])
	# カーソルの位置を把握
	cursor.x = Input.mousePosX
	cursor.y = Input.mousePosY
	Sprite.check(cursor, backwindow99.images)
	end
	
	if kya1.s == 0 and backwindow99.image3.k == 1 then
		kya1.draw
		kya1.move
	end
	if kya1.s == 1 and kya.s != 2 then
		backwindow.draw
		kya.draw
		kya.move1
	end
	if kya.s == 2 and kya2.sw != 1 then
		backwindow2.draw
		kya2.draw
		kya2.move
	end
	if kya2.sw == 1 and kya3.sw != 9 then
		backwindow3.draw
		kya3.draw
		kya3.move2
	end
	if kya3.sw == 9 and kya4.sw != 5 then
		backwindow4.draw
		kya4.draw
		kya4.move
	end
	if kya4.sw == 5 and kya5.sw != 18 then
		backwindow5.draw
		kya5.draw
		kya5.move3
	end
	if kya5.sw == 18 and kya8.hi != 7 then
		backwindow8.draw
		kya8.draw
		kya8.move
	end
	if kya8.hi == 7 and kya7.sw != 18 then
		backwindow7.draw
		kya7.draw
		kya7.move3
	end
	if kya7.sw == 18 and kya6.hi != 17 then
		backwindow6.draw
		kya6.draw
		kya6.move
	end
end