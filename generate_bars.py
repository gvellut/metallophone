import random

a = [ 0.58023333, 1.16046667,   1.7407    ,
         2.32093333,   2.90116667,   3.4814    ,   4.06163333,
         4.64186667,   5.2221    ,   5.80233333,   6.38256667,
         6.9628    ,   7.54303333,   8.12326667,   8.7035    ,
         9.28373333,   9.86396667,  10.4442    ,  11.02443333,
        11.60466667,  12.1849    ,  12.76513333,  13.34536667,
        13.9256    ,  14.50583333,  15.08606667,  15.6663    ,
        16.24653333,  16.82676667, 17.407]

b = [4.01421148,  3.50474272,  2.08735296,  4.69024726,
        3.22238792,  3.79227981,  3.9091925 ,  3.51339374,  2.85836764,
        3.50193658,  4.0540055 ,  4.18943074,  3.84016104,  3.82113074,
        4.04089497,  4.17259098,  2.4102513 ,  2.07068604,  2.9407145 ,
        4.70185976,  4.81620133,  3.86347956,  4.66826559,  2.45688179,
        3.53218333,  2.88734378,  4.6945994 ,  2.42921468,  3.71575944]

colors = ["Apricot" ,  "Aquamarine","Bittersweet","Blue","BlueGreen",
  "BlueViolet", "BrickRed",
"Brown","BurntOrange",
"CadetBlue","CarnationPink",
"Cerulean","CornflowerBlue",
"Cyan","Dandelion",
"DarkOrchid","Emerald",
"ForestGreen","Fuchsia",
"Goldenrod","Gray",
"Green","   GreenYellow",
"JungleGreen","Lavender",
"LimeGreen","Magenta",
"Mahogany","Maroon",
"Melon","MidnightBlue",
"Mulberry","NavyBlue",
"OliveGreen","Orange",
"OrangeRed","Orchid",
"Peach","Periwinkle",
"PineGreen","Plum",
"ProcessBlue","Purple",
"RawSienna","Red",
"RedOrange","RedViolet",
"Rhodamine","RoyalBlue",
"RoyalPurple","RubineRed",
"Salmon","SeaGreen",
"Sepia","SkyBlue",
"SpringGreen","Tan",
"TealBlue","Thistle",
"Turquoise","Violet",
"VioletRed","White",
"WildStrawberry","Yellow",
"YellowGreen","YellowOrange"]

random.seed(7)

r = None
rb = None
for i in range(len(b)):
  while r == rb:
    r = random.randint(0,len(colors)) % len(colors)
  rb = r
  color = colors[r]
  print(f"\psframe[fillstyle=solid,fillcolor={color},linecolor={color},dimen=outer]({a[i]},0)({a[i+1]},4)")


