require 'squib'

# Squib::logger.level = Logger::DEBUG

light = '#F3EFE3'
dark = '#230602'
transparent = '#FFFFFF00'
numbers = %w(1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 6 6 6 6 6 6 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 N N N N N N N N N X X X X X X X X X X)
colors = ['#19120c'] * 1 +
         ['#0E1B0A'] * 2 +
         ['#0A0D1C'] * 3 +
         ['#191A0A'] * 4 +
         ['#190B0A'] * 5 +
         ['#0E1A0C'] * 6 +
         ['#0A0E1A'] * 7 +
         ['#0B1B18'] * 8 +
         ['#1A0A0A'] * 9 +
         ['#230503'] * 10
cardnb = 18
width = 815
height = 1110
topm = 32
leftm = 30
nw = 60
bbvm = 75
bbhm = bbvm + 8
fontpx = 95
font = "Drukaatieburti #{fontpx}px"
imagesdir = '~/PnP/TidesOfTime/Art/'
drawlines = false
puts font
Squib::Deck.new(width: width, height: height, cards: cardnb, layout: 'layout.yml') do


  save format: :png
end
