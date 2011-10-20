# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'model/date/date_announce'

class DateAnnounceTest < Test::Unit::TestCase
  
  def setup
    
  end
  
  def teardown
    
  end
  
  def test_initialize
    date_announce = DateAnnounce.new()
    assert_not_nil date_announce, nil 
    assert_not_nil date_announce.datetime, nil
    assert_not_nil date_announce.locale, nil 
    puts('date_announce.locale: ' + date_announce.locale)
  end
  
  def test_create_datetext_nil
    date_announce = DateAnnounce.new(Time.now, "US")
    datetext = date_announce.creaye_datetext()
    assert_nil(datetext)
  end
  
  def test_create_datetext
    date_announce = DateAnnounce.new
    datetext = date_announce.creaye_datetext
    assert_not_nil datetext, nil
    puts("datetext: " + datetext)
  end
end

