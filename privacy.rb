class Machine

  def initialize
    @switch = :off
  end

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def switch_state
    switch
  end 

  private
  attr_accessor :switch   

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

machine = Machine.new
machine.start
p machine.switch_state