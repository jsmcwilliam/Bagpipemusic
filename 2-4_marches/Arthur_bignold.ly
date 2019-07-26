\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%	3. Option to comment out "meter" from title e.g. if more than one tune
%	   per page.
%
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"           %(Original)
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 2/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
%   \set Staff.midiInstrument = #"bagpipe"  is set in bagpipe_new.ly (\layout)
%   \showKeySignature (for BMW compatibility)
%   \quarterBeaming % Sets the autobeamer to span quarter notes only. 
    		    % Use for fast music.
%   \halfBeaming    % Sets the autobeamer to span half notes. 
                    % Mostly used in reels.
%   \reelTime       % Reels are in allabreve time with half note beaming.
%   \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
%   \stemspace      % Add appropriate tweaks needed for piping grace notes 
                    % to look great.
%   \pgrace         % variant of above (\stemspace)
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
  \partial 8 {A16. [ f32 ]} 
 \dble e8. [ a16 ] \dblc c8. [ b16 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \thrwd d8. [ G16 ] \dblb b8. [ a16 ] 
 \grg G16. [ \grd b32 g16. ] e32 ] \thrwd d8 [ \grg c16. d32 ]  \break

 \dble e8. [ a16 ] \dblc c8. [ b16 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \dble e8 [ \dblA A8 ] \hdblc c8 [ \dblA A8 ] 
 a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \thrwd d8 [ \dblg g8 ] \hdblb b8 [ \dblg g8 ] 
 G16. [ \grd b32 g16. e32 ] \thrwd d8 [ \grg c16. d32 ]  
 \break

 \dble e8 [ \dblA A8 ] \hdblc c8 [ \dblA A8 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
     } %end repeat

    % Part 3
    \repeat volta 2 {
 \dble e8 
 \grg a8 [ \taor a16. \grd c32 ] \dble e16 [ a16 \dblc c8 ] 
 \grg a16. [ \grd c32  A16. f32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg G16. [ \grd G32 G16. b32 ] d16 [ \grd G16 \dblc c8 ] 
 \grg G16. [ \grd b32 g16. e32 ] \thrwd d8 [ \dblc c16. b32 ]  \break
 
 \grg a8 [ \taor a16. \grd c32 ] \dble e16 [ a16 \dblc c8 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
     } %end repeat

    % Part 4
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \grg e32 [ A16. c16 A16 ] a8 [ \taor a16. \grd c32 ] 
 \dble e16. [ d32 c16. d32 ] \dble e16 [a \dblc c8 ] 
 \grg d32 [ g16. b16 g16 ] G16. [ \grd G32 G16. \grd b32 ] 
 \dbld d16. [ c32 \grg b32 e16. ] \dbld d16 [ G16 \dblb b8 ]  \break
     } %end repeat
     \alternative {
     	 {   \grg e32 [ A16. c16 A16 ] a8 [ \taor a16. \grd c32 ] 
     	     \dble e16. [ d32 c16. d32 ] \dble e16 [ a16 \dblc c8 ] 
     	     \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
     	     \grg a4 \wbirl a8 
     	     \break }
 
     	 {  \set Score.measureLength = #(ly:make-moment 6/8)
     	     \grg a16. [ b32 c16. d32 ] \grg c32 [ e16. a16. \grd c32 ] 
     	     \grg d32 [ f16. c32 e16. ] \dble e16 [ a16 \dblc c8 ] 
     	     \grip e8. [ c16 ] \grg b32 [ d16. G16 \grd b32 ] 
     	     \grg a4 \wbirl a8 
     	     \bar "|." \break }
     }

    } %end staff
    
  \header {
%    meter = "March"
    piece = "Arthur Bignold of Lochrosque"
    composer = "J. MacColl"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\once \hide Score.BarLine
%\once \hide Score.SpanBar
%\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
%\unfoldRepeats for better playback
%remove midi when compiling book
% see Examples or Leaving Glen Urquhart for implementation guide
%................................................................