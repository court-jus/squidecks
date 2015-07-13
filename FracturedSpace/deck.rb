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
width = 2100
height = 1500
topm = 0
leftm = 0
nw = 0
bbvm = 0
bbhm = bbvm + 0
fontpx = 95
font = "Drukaatieburti #{fontpx}px"
imagesdir = '/home/gl/PnP/TidesOfTime/Art/'
images = (0..17).collect{|i| imagesdir + 'card-' + String(i) + '.png'}

drawlines = false

Squib::Deck.new(width: width, height: height, cards: cardnb, layout: 'layout.yml') do
  background color: 'black'
  deck = xlsx file: 'deck.xlsx'

  png file: images, layout: :Art
  png file: deck['Suit'].collect{|i| imagesdir + i + '.png'}, layout: :SuitIcon
  png file: imagesdir + 'masque.png', layout: :Masque

  text str: deck['Titre'], layout: :TitleShadow
  text str: deck['Titre'], layout: :Title
  text str: deck['Titre'], layout: :Title2
  text str: deck['Titre'], layout: :Title3
  text str: deck['Points'], layout: :Points
  text(str: deck['Pouvoir'], layout: :PowerText2) do |embed|
      embed.png key: ':RED:', file: imagesdir + 'sRED.png', width: 100, height: 50
      embed.png key: ':YELLOW:', file: imagesdir + 'sYELLOW.png', width: 100, height: 50
      embed.png key: ':PINK:', file: imagesdir + 'sPINK.png', width: 100, height: 50
      embed.png key: ':BLUE:', file: imagesdir + 'sBLUE.png', width: 100, height: 50
      embed.png key: ':GREEN:', file: imagesdir + 'sGREEN.png', width: 100, height: 50
  end
  text(str: deck['Pouvoir'], layout: :PowerText3) do |embed|
      embed.png key: ':RED:', file: imagesdir + 'sRED.png', width: 100, height: 50
      embed.png key: ':YELLOW:', file: imagesdir + 'sYELLOW.png', width: 100, height: 50
      embed.png key: ':PINK:', file: imagesdir + 'sPINK.png', width: 100, height: 50
      embed.png key: ':BLUE:', file: imagesdir + 'sBLUE.png', width: 100, height: 50
      embed.png key: ':GREEN:', file: imagesdir + 'sGREEN.png', width: 100, height: 50
  end
  text(str: deck['Pouvoir'], layout: :PowerText) do |embed|
      embed.png key: ':RED:', file: imagesdir + 'sRED.png', width: 100, height: 50
      embed.png key: ':YELLOW:', file: imagesdir + 'sYELLOW.png', width: 100, height: 50
      embed.png key: ':PINK:', file: imagesdir + 'sPINK.png', width: 100, height: 50
      embed.png key: ':BLUE:', file: imagesdir + 'sBLUE.png', width: 100, height: 50
      embed.png key: ':GREEN:', file: imagesdir + 'sGREEN.png', width: 100, height: 50
  end
  # rect layout: :Points
  # rect layout: :PowerText


  save format: :png

end
