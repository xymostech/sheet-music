\version "2.18.2"

notes = \relative c' {
  \key d \minor

  d8^\markup { \box \pad-markup #0.2 \bold B } e f g a f a r
  gis e gis r g ees g r
  d8 e f g a f a d
  c a f a c r r4

  r a r a
  r <gis a> r <g a>
  r <f a> r <f a>
  r <f a> r <f a>

  a8 b cis, d e cis e r
  f cis f r e cis e r
  a8 b cis, d e cis e r
  f cis f r e r r4

  r e r e r f r e
  r e r e r f r e

  d8 e f g a f a r
  gis e gis r g ees g r
  d8 e f g a f a d
  c a f a c r r4

  r1 r1
  r4 a2.( a1)

  d,8^\markup { \box \pad-markup #0.2 \bold C } e f g a a a a
  gis gis gis gis g g g g
  d8 e f g a a a a
  c c a a c c c c

  d,8 e f g a a a a
  gis gis gis gis g g g g
  d8 e f g a a a a
  c c a a c c c c

  a b cis, d e e e e
  f f f f e e e e
  a b cis, d e e e e
  f f f f e e e e

  a b cis, d e e e e
  fis fis fis fis e e e e
  a b cis, d e e e e
  fis fis fis fis e e e e

  d8^\markup { \box \pad-markup #0.2 \bold D } e f g a a a a
  gis gis gis gis g g g g
  d e f g a a a a
  c c a a c c c c

  d,8 e f g a a a a
  gis gis gis gis g g g g
  d e f g a a a a
  a a a a d,2

  r4 <d gis> r2
  r4 <d a'> r2

  d8 e f g a4 a
  cis8 a cis4 d2

  r4 <d, gis> r2
  r4 <d a'> r2

  d8 e f g a4 a
  cis8 a cis4 d2

  r4 <d, gis> r2
  r4 <d gis> r2
  r4 <d gis> <d gis> <d gis>
  <d gis> <d gis> <d gis> <d gis>

  r1 r1
  r4 <a' d> r2

  \bar "|."
}

\header {
  title = "In the Hall of the Mountain King"
  composer = "EDVARD GRIEG"
  arranger = "arr. Emily Eisenberg"
}

\score {
  <<
    \new Staff {
      \clef "treble"

      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(1 1 1 1)

      \notes
    }
    \new TabStaff \with {
      stringTunings = #ukulele-tuning
      instrumentName = #"Ukulele"
    } {
      \notes
    }
  >>
}

% (defun engrave-file () (call-process "lilypond" nil nil nil (buffer-file-name)))
% (add-hook 'after-save-hook #'engrave-file nil t)