gpio.mode(4, gpio.OUTPUT)

blinktimer = tmr.create()
blinktimer:register(100, tmr.ALARM_SEMI, function(t)
  if gpio.read(4) == gpio.HIGH then
    t:start()
  end
  require("led_flip").flip()
end)
