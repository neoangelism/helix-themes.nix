let
  base00 = "#161616";
  base01 = "#262626";
  base02 = "#393939";
  base03 = "#525252";
  base04 = "#dde1e6";
  base05 = "#f2f4f8";
  base06 = "#ffffff";
  base07 = "#08bdba";
  base08 = "#3ddbd9";
  base09 = "#78a9ff";
  base0A = "#ee5396";
  base0B = "#33b1ff";
  base0C = "#ff7eb6";
  base0D = "#42be65";
  base0E = "#be95ff";
  base0F = "#82cfff";
in
{
  "type" = base09;
  "constant" = base0E;
  "constant.numeric" = base0F;
  "constant.character.escape" = base07;
  "string" = base0E;
  "string.regexp" = base07;
  "comment" = base03;
  "variable" = base04;
  "variable.builtin" = base04;
  "variable.parameter" = base04;
  "label" = base0F;
  "punctuation" = base08;
  "punctuation.delimiter" = base08;
  "punctuation.bracket" = base04;
  "keyword" = base09;
  "keyword.control" = base09;
  "keyword.control.exception" = base0F;
  "keyword.control.return" = base0F;
  "keyword.directive" = base09;
  "keyword.function" = base08;
  "operator" = base09;
  "function" = base0C;
  "function.builtin" = base0C;
  "function.macro" = base07;
  "tag" = base04;
  "namespace" = base04;
  "module" = base04;
  "attribute" = base0F;
  "constructor" = base09;
  "special" = base07;

  "markup.heading.marker" = base08;
  "markup.heading.1" = { fg = base0E; modifiers = [ "bold" ]; };
  "markup.heading.2" = { fg = base09; modifiers = [ "bold" ]; };
  "markup.heading.3" = { fg = base07; modifiers = [ "bold" ]; };
  "markup.heading.4" = { fg = base0F; modifiers = [ "bold" ]; };
  "markup.heading.5" = { fg = base04; modifiers = [ "bold" ]; };
  "markup.heading.6" = { fg = base06; modifiers = [ "bold" ]; };
  "markup.list" = base0E;
  "markup.bold" = { modifiers = [ "bold" ]; };
  "markup.italic" = { modifiers = [ "italic" ]; };
  "markup.link.url" = { fg = base09; modifiers = [ "italic" ]; };
  "markup.link.label" = base04;
  "markup.link.text" = base04;
  "markup.quote" = base08;
  "markup.raw" = base09;

  "diff.plus" = { fg = base0D; bg = base02; };
  "diff.delta" = { fg = base04; bg = base01; };
  "diff.minus" = { fg = base09; bg = base02; };

  "ui.background" = { bg = base00; };
  "ui.background.separator" = base00;
  "ui.cursor" = { fg = base00; bg = base04; };
  "ui.cursor.match" = { fg = base0F; bg = base02; modifiers = [ "bold" ]; };
  "ui.cursor.insert" = { fg = base00; bg = base04; };
  "ui.cursor.select" = { fg = base00; bg = base0E; };
  "ui.cursorline.primary" = { bg = base01; };
  "ui.selection" = { bg = base02; };
  "ui.selection.primary" = { bg = base02; };
  "ui.linenr" = base03;
  "ui.linenr.selected" = { fg = base04; };
  "ui.statusline" = { fg = base06; bg = base00; };
  "ui.statusline.inactive" = { fg = base03; bg = base00; };
  "ui.statusline.normal" = { fg = base06; bg = base00; modifiers = [ "bold" ]; };
  "ui.statusline.insert" = { fg = base06; bg = base0C; modifiers = [ "bold" ]; };
  "ui.statusline.select" = { fg = base06; bg = base0E; modifiers = [ "bold" ]; };
  "ui.bufferline" = { fg = base03; bg = base00; };
  "ui.bufferline.active" = { fg = base0F; bg = base01; modifiers = [ "bold" ]; };
  "ui.popup" = { fg = base06; bg = base01; };
  "ui.window" = { fg = base06; bg = base01; };
  "ui.help" = { fg = base06; bg = base01; };
  "ui.text" = base06;
  "ui.text.focus" = base0F;
  "ui.menu" = { fg = base06; bg = base01; };
  "ui.menu.selected" = { fg = base06; bg = base03; modifiers = [ "bold" ]; };
  "ui.virtual.whitespace" = { fg = base02; };
  "ui.virtual.indent-guide" = { fg = base02; };
  "ui.virtual.ruler" = { bg = base02; };

  "hint" = base0C;
  "info" = base09;
  "warning" = base0F;
  "error" = base06;
  "diagnostic" = { underline = { style = "line"; }; };
  "diagnostic.hint" = { underline = { color = base0C; style = "dotted"; }; };
  "diagnostic.info" = { underline = { color = base09; style = "dotted"; }; };
  "diagnostic.warning" = { underline = { color = base0F; style = "curl"; }; };
  "diagnostic.error" = { underline = { color = base06; style = "curl"; }; };
}
