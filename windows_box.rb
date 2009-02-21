require 'wx'
include Wx

class MyFrame < Frame
  def initialize()
    super(nil, -1, 'Kyle\'s test box')
    @my_panel = Panel.new(self) 
    @my_label = StaticText.new(@my_panel, -1, 'Static Text', DEFAULT_POSITION, DEFAULT_SIZE, ALIGN_CENTER)
    @my_textbox = TextCtrl.new(@my_panel, -1, 'Text Control')
    @my_combo = ComboBox.new(@my_panel, -1, 'ComboxBox Text', DEFAULT_POSITION, DEFAULT_SIZE, ['Item 1', 'Item 2', 'Item 3'])
    @my_button = Button.new(@my_panel, -1, 'Button')
    evt_button(@my_button.get_id()) { |event| my_button_click(event)}
    @my_panel_sizer = BoxSizer.new(VERTICAL)
    @my_panel.set_sizer(@my_panel_sizer)
    @my_panel_sizer.add(@my_label, 0, GROW|ALL, 2)
    @my_panel_sizer.add(@my_textbox, 0, GROW|ALL, 2)
    @my_panel_sizer.add(@my_combo, 0, GROW|ALL, 2)
    @my_panel_sizer.add(@my_button, 0, GROW|ALL, 2)
    show()
  end
  
  def my_button_click(event)
    # Your code here
  end
  
end


  
  class MyApp < App
  def on_init
    MyFrame.new
  end
end

MyApp.new.main_loop()
