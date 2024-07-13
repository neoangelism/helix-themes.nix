let
  white = "#DCD7BA"; # light green beige
  sumiInk0 = "#16161D"; # dark blue black
  sumiInk1 = "#1F1F28"; # dark grey blue black
  sumiInk1_5 = "#252530"; # dark grey blue black
  sumiInk2 = "#2A2A37"; # bluey grey black
  sumiInk3 = "#363646"; # dark grey blue undertone
  sumiInk4 = "#54546D"; # medium grey blue (dusty lavender)
  waveBlue1 = "#252E42"; # dark blue
  waveBlue1_5 = "#2A3D5A"; # blue dark grey
  waveBlue2 = "#2F496C"; # medium grey blue
  winterGreen = "#2B3328"; # fuckin dark green
  winterYellow = "#49443C"; # cool tone brown (yellow undertone)
  winterRed = "#43242B"; # dark ass maroon
  autumnGreen = "#76946A"; # greyish green
  autumnRed = "#C34043"; # pinky red
  autumnYellow = "#DCA561"; # warm yellow / dark beige
  fujiGray = "#727169"; # yellow undertone grey
  oniViolet = "#957FB8"; # light purple grey
  crystalBlue = "#7E9CD8"; # darker baby blue
  springViolet2 = "#9CABCA"; # grey blue but purple-ish
  springBlue = "#7FB4CA"; # dusty blue
  lightBlue = "#A3D4D5"; # light seafoam but cool tone
  waveAqua2 = "#7AA89F"; # darker seafoam
  springGreen = "#98BB6C"; # pea soup green
  boatYellow2 = "#C0A36E"; # orangy light brown
  carpYellow = "#E6C384"; # light orange brown (super light)
  sakuraPink = "#D27E99"; # dusty hot pink
  waveRed = "#E46876"; # pink borderline red
  peachRed = "#FF5D62"; # peach red (but bright)
  surimiOrange = "#FFA066"; # mhm that is a light orange (tangerine???)
  katanaGray = "#717C7C"; # steel almost blue but definitely more grey than blue

  coolBeige = "#C3BDB5";
  coolLightBrown = "#80796A";
  greyLightGreen = "#9A9D93";
  greyGreen = "#5F675D";
  greenishBrown = "#534D3D";
  darkCoolBrown = "#1D211B";
  darkGreyGreen = "#40473D";
  thatsBrown = "#393426";
  
  lightBlueGrey = "#909394";
  orangePrettyMuch = "#B77838";
  pinkishOffwhite = "#F3E5E6";
  mediumGrey = "#565B5C";
  beige = "#B09979";
  blackEmeraldGreen = "#2A322D";
  warmBeige = "#AB8066";
  darkBlueGrey = "#383B3C";
  pumpkinSpice = "#A85224";
  darkGreenGrey = "#2A3422";
  onyx = "#0A0A06";
  darkEmeraldGreen = "#04150C";
in
{
  "type" = carpYellow;
  "constant" = sakuraPink;
  "constant.numeric" = sakuraPink;
  "constant.character.escape" = surimiOrange;
  "string" = autumnGreen;
  "string.regexp" = thatsBrown;
  "comment" = pinkishOffwhite;
  "variable" = white;
  "variable.builtin" = lightBlue;
  "variable.parameter" = white;
  "label" = lightBlue;
  "punctuation" = fujiGray;
  "punctuation.delimiter" = fujiGray;
  "punctuation.bracket" = white;
  "keyword" = darkCoolBrown;
  "keyword.control" = waveRed;
  "keyword.control.exception" = peachRed;
  "keyword.control.return" = peachRed;
  "keyword.directive" = waveRed;
  "keyword.function" = waveRed;
  "operator" = autumnYellow;
  "function" = thatsBrown;
  "function.builtin" = thatsBrown;
  "function.macro" = thatsBrown;
  "tag" = carpYellow;
  "namespace" = waveAqua2;
  "module" = waveAqua2;
  "attribute" = thatsBrown;
  "constructor" = carpYellow;
  "special" = surimiOrange;

  "markup.heading.marker" = fujiGray;
  "markup.heading.1" = { fg = sakuraPink; modifiers = [ "bold" ]; };
  "markup.heading.2" = { fg = crystalBlue; modifiers = [ "bold" ]; };
  "markup.heading.3" = { fg = springGreen; modifiers = [ "bold" ]; };
  "markup.heading.4" = { fg = carpYellow; modifiers = [ "bold" ]; };
  "markup.heading.5" = { fg = waveAqua2; modifiers = [ "bold" ]; };
  "markup.heading.6" = { fg = white; modifiers = [ "bold" ]; };
  "markup.list" = sakuraPink;
  "markup.bold" = { modifiers = [ "bold" ]; };
  "markup.italic" = { modifiers = [ "italic" ]; };
  "markup.link.url" = { fg = waveBlue2; modifiers = [ "italic" ]; };
  "markup.link.label" = waveAqua2;
  "markup.link.text" = waveAqua2;
  "markup.quote" = fujiGray;
  "markup.raw" = carpYellow;

  "diff.plus" = { fg = autumnGreen; bg = winterGreen; };
  "diff.delta" = { fg = autumnYellow; bg = winterYellow; };
  "diff.minus" = { fg = autumnRed; bg = winterRed; };

  "ui.background" = { bg = lightBlueGrey; };
  "ui.background.separator" = sumiInk4;
  "ui.cursor" = { fg = sumiInk1; bg = springViolet2; };
  "ui.cursor.match" = { fg = lightBlue; bg = waveBlue1; modifiers = [ "bold" ]; };
  "ui.cursor.insert" = { fg = sumiInk1; bg = boatYellow2; };
  "ui.cursor.select" = { fg = sumiInk1; bg = sakuraPink; };
  "ui.cursorline.primary" = { bg = sumiInk1_5; };
  "ui.selection" = { bg = sumiInk3; };
  "ui.selection.primary" = { bg = waveBlue1_5; };
  "ui.linenr" = sumiInk4;
  "ui.linenr.selected" = { fg = springViolet2; };
  "ui.statusline" = { fg = springViolet2; bg = sumiInk0; };
  "ui.statusline.inactive" = { fg = sumiInk4; bg = sumiInk0; };
  "ui.statusline.normal" = { fg = sumiInk0; bg = springViolet2; modifiers = [ "bold" ]; };
  "ui.statusline.insert" = { fg = sumiInk0; bg = autumnYellow; modifiers = [ "bold" ]; };
  "ui.statusline.select" = { fg = sumiInk0; bg = sakuraPink; modifiers = [ "bold" ]; };
  "ui.bufferline" = { fg = sumiInk4; bg = sumiInk0; };
  "ui.bufferline.active" = { fg = lightBlue; bg = sumiInk1; modifiers = [ "bold" ]; };
  "ui.popup" = { fg = sumiInk2; bg = sumiInk2; };
  "ui.window" = { fg = sumiInk4; bg = sumiInk1; };
  "ui.help" = { fg = white; bg = sumiInk2; };
  "ui.text" = white;
  "ui.text.focus" = lightBlue;
  "ui.menu" = { fg = springViolet2; bg = sumiInk2; };
  "ui.menu.selected" = { fg = sumiInk1; bg = sakuraPink; modifiers = [ "bold" ]; };
  "ui.virtual.whitespace" = { fg = sumiInk3; };
  "ui.virtual.indent-guide" = { fg = sumiInk3; };
  "ui.virtual.ruler" = { bg = sumiInk3; };

  "hint" = thatsBrown;
  "info" = crystalBlue;
  "warning" = carpYellow;
  "error" = peachRed;
  "diagnostic" = { underline = { style = "line"; }; };
  "diagnositc.hint" = { underline = { color = thatsBrown; style = "dotted"; }; };
  "diagnositc.info" = { underline = { color = crystalBlue; style = "dotted"; }; };
  "diagnositc.warning" = { underline = { color = carpYellow; style = "curl"; }; };
  "diagnositc.error" = { underline = { color = peachRed; style = "curl"; }; };
}
