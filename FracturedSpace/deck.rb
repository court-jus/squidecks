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
cardnb = 55
width = 815
height = 1110
topm = 32
leftm = 30
nw = 60
bbvm = 75
bbhm = bbvm + 8
fontpx = 95
font = "Drukaatieburti #{fontpx}px"
drawlines = false
puts font
Squib::Deck.new(width: width, height: height, cards: cardnb, layout: 'layout.yml') do

  png file: ['../0101.png',
             '../0201.png', '../0202.png',
             '../0301.png', '../0302.png', '../0303.png',
             '../0401.png', '../0402.png', '../0403.png', '../0404.png',
             '../0501.png', '../0502.png', '../0503.png', '../0504.png', '../0505.png',
             '../0601.png', '../0602.png', '../0603.png', '../0604.png', '../0605.png',
             '../0606.png',
             '../0701.png', '../0702.png', '../0703.png', '../0704.png', '../0705.png',
             '../0706.png', '../0707.png',
             '../0801.png', '../0802.png', '../0803.png', '../0804.png', '../0805.png',
             '../0806.png', '../0807.png', '../0808.png',
             '../0901.png', '../0902.png', '../0903.png', '../0904.png', '../0905.png',
             '../0906.png', '../0907.png', '../0908.png', '../0909.png',
             '../1001.png', '../1002.png', '../1003.png', '../1004.png', '../1005.png',
             '../1006.png', '../1007.png', '../1008.png', '../1009.png', '../1010.png',
             ],
       x: leftm, y: topm, width: 750, height: 1050

  png file: ['../DavidRevoy/card_010_export.png'] * 1 +
            ['../DavidRevoy/card_004_export.png'] * 2 +
            ['../DavidRevoy/card_007_export.png'] * 3 +
            ['../DavidRevoy/card_002_export.png'] * 4 +
            ['../DavidRevoy/card_009_export.png'] * 5 +
            ['../DavidRevoy/card_003_export.png'] * 6 +
            ['../DavidRevoy/card_006_export.png'] * 7 +
            ['../DavidRevoy/card_005_export.png'] * 8 +
            ['../DavidRevoy/card_008_export.png'] * 9 +
            ['../DavidRevoy/card_001_export.png'] * 10,
      x: leftm, y: topm, width: 750, height: 1050

  rect stroke_color: transparent, fill_color: colors, x: 0, y:0,
    width: width, height: topm + 5

  rect stroke_color: transparent, fill_color: colors, x: 0, y:height -topm -5,
    width: width, height: topm + 5

  rect stroke_color: transparent, fill_color: colors, x: 0, y:0,
    width: leftm + 5, height: height

  rect stroke_color: transparent, fill_color: colors, x: width -leftm -10, y:0,
    width: leftm + 10, height: height

  if drawlines
      line stroke_color: light,
            x1: leftm + bbhm + nw/2, y1: 0, x2: leftm + bbhm + nw/2, y2: height,
                   stroke_width: 2
      line stroke_color: light,
            x1: width - (leftm + bbhm + nw/2), y1: 0, x2: width - (leftm + bbhm + nw/2), y2: height,
                   stroke_width: 2
      line stroke_color: light,
            x1: 0, y1: topm + bbvm + fontpx/2, x2: width, y2: topm + bbvm + fontpx/2,
                   stroke_width: 2
      line stroke_color: light,
            x1: 0, y1: height-(topm + bbvm + fontpx/2), x2: width, y2: height-(topm + bbvm + fontpx/2),
                   stroke_width: 2

  end
  [leftm + bbhm, width - leftm - nw - bbhm].each do |x|
    text range: 0, str: numbers,
        color: dark, font: font,
        x: x-5, y: topm + bbvm - 10, width: nw, align: :center
    text range: 1..cardnb-1, str: numbers,
        color: dark, font: font,
        x: x, y: topm + bbvm - 10, width: nw, align: :center
  end
  [leftm + bbhm + nw, width - leftm - bbhm].each do |x|
    text range: 0, str: numbers,
        color: dark, font: font,
        x: x+5, y: height - topm - bbvm + 10, width: nw, align: :center, angle: 3.14159265
    text range: 1..cardnb-1, str: numbers,
        color: dark, font: font,
        x: x, y: height - topm - bbvm + 10, width: nw, align: :center, angle: 3.14159265
  end
  png file: ['../DavidRevoy/card_010_trans.png'] * 1 +
            ['../DavidRevoy/card_004_trans.png'] * 2 +
            ['../DavidRevoy/card_007_trans.png'] * 3 +
            ['../DavidRevoy/card_002_trans.png'] * 4 +
            ['../DavidRevoy/card_009_trans.png'] * 5 +
            ['../DavidRevoy/card_003_trans.png'] * 6 +
            ['../DavidRevoy/card_006_trans.png'] * 7 +
            ['../DavidRevoy/card_005_trans.png'] * 8 +
            ['../DavidRevoy/card_008_trans.png'] * 9 +
            ['../DavidRevoy/card_001_trans.png'] * 10,
      x: leftm, y: topm, width: 750, height: 1050

  save format: :png
end
