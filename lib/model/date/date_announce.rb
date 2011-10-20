# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'date'

class DateAnnounce
  attr_accessor :datetime
  attr_accessor :locale 
  attr_reader :dateText
  
  public
  def initialize(datetime=nil, locale=nil)
    @datetime = DateTime.now
    @locale = 'JP'
    create_accessor(datetime, locale)
  end
  
  private
  def create_accessor(datetime=nil, locale=nil)
    @datetime = datetime unless datetime.nil?
    @locale = locale unless locale.nil?
  end
  
  public
  def creaye_datetext(datetime=nil, locale=nil)
    create_accessor(datetime, locale)
    if @locale == 'JP'
      return @datetime.strftime("日本標準時(%z): %Y年%m月%d日 %H時%M分%S秒")
    else
      return nil;
    end
  end
  
end
