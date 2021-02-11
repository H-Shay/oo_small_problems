# Modify this class so new will optionally let you specify a fixed banner width at the time 
# the Banner object is created. The message in the banner should be centered within the 
# banner of that width. Decide for yourself how you want to handle widths that are either 
# too narrow or too wide.

class Banner
  def initialize(message, size=message.size)
    if size < message.size
      puts "Banner size is too small to accomodate message. Please choose a number larger than the number of letters in the message."
    else 
      @message = message
      @size = size 
    end 
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' + '-'*(@size+2) + '+'
  end

  def empty_line
    "|" + " "*(@size+2) + '|'
  end

  def message_line
    if @size%2 == 0
      "|" + " "*(((@size+2)/2)-@message.size/2) + @message + " "*(((@size+2)/2)-@message.size/2) + "|"
    else 
       "|" + " "*(((@size+2)/2)-@message.size/2) + @message + " "*(((@size+2)/2)-@message.size/2) + " |"
    end 
  end
end

banner = Banner.new("fuck you", 51)
puts banner 


