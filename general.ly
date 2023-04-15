\version "2.24.0"
\language english
\header {
  title = "Razzamatazz"
  %subtitle = "(tune)"
  composer = "Quincy Jones"
  arranger = "Bram de Wilde"
  % meter = "120"
  %piece = "Swing"
  %tagline = "Bram de Wilde"
}

%% Layout settings
\layout {
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%% macros %%

nostems = {
  \hide Stem
}
stems = {
  \undo \hide Stem
}
restbar = { g4 g g g }
fourbar = {\restbar | \restbar | \restbar | \restbar |}
eightbar = {\fourbar \fourbar}

slash = {
  \improvisationOn
  \temporary\override NoteHead.Y-offset = #0
  \hide Stem
}

noslash = {
  \improvisationOff
  \revert NoteHead.Y-offset
  \undo \hide Stem
}
