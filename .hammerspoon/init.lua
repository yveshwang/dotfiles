-- Yves Hwang
-- 12.11.2015

-- hello world example with alerts
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

-- helloworld with notify
hs.hotkey.bind({"cmd", "alt",}, "W", function()
  hs.notify.new( {title="whatever", informativeText="Hello world"}):send()
end)

-- moving windows 10 pixel up down left right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y + 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y + 10
  win:setFrame(f)
end)

-- get cord and size of window
hs.hotkey.bind({"alt"}, "+", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  hs.alert.show(tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 5)
end)

-- size window to the left
hs.hotkey.bind({"alt"}, "5", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  hs.alert.show("left: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- size window to the right
hs.hotkey.bind({"alt"}, "6", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w/2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  hs.alert.show("right: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- four grid layout
-- Q1
hs.hotkey.bind({"alt"}, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  hs.alert.show("Q1: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- q2
hs.hotkey.bind({"alt"}, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w/2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  hs.alert.show("Q2: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- q3
hs.hotkey.bind({"alt"}, "3", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h/2)
  f.w = max.w / 2
  f.h = max.h / 2
  hs.alert.show("Q3: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- q4
hs.hotkey.bind({"alt"}, "4", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w/2)
  f.y = max.y + (max.h/2)
  f.w = max.w / 2
  f.h = max.h / 2
  hs.alert.show("Q4: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

-- maximise 
hs.hotkey.bind({"alt"}, "m", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  hs.alert.show("maximise: " .. tostring(f.x) .. "," .. tostring(f.y) .. " " .. tostring(f.w) .. "," .. tostring(f.h), 2)
  win:setFrame(f)
end)

