# MOUSE SUPPORT         top
#      If the mouse option is on (the default is off), tmux allows mouse
#      events to be bound as keys.  The name of each key is made up of a mouse
#      event (such as ‘MouseUp1’) and a location suffix, one of the following:

#            Pane             the contents of a pane
#            Border           a pane border
#            Status           the status line window list
#            StatusLeft       the left part of the status line
#            StatusRight      the right part of the status line
#            StatusDefault    any other part of the status line

#      The following mouse events are available:

#            WheelUp       WheelDown
#            MouseDown1    MouseUp1      MouseDrag1   MouseDragEnd1
#            MouseDown2    MouseUp2      MouseDrag2   MouseDragEnd2
#            MouseDown3    MouseUp3      MouseDrag3   MouseDragEnd3
#            DoubleClick1  DoubleClick2  DoubleClick3
#            TripleClick1  TripleClick2  TripleClick3

#      Each should be suffixed with a location, for example
#      ‘MouseDown1Status’.

#      The special token ‘{mouse}’ or ‘=’ may be used as target-window or
#      target-pane in commands bound to mouse key bindings.  It resolves to
#      the window or pane over which the mouse event took place (for example,
#      the window in the status line over which button 1 was released for a
#      ‘MouseUp1Status’ binding, or the pane over which the wheel was scrolled
#      for a ‘WheelDownPane’ binding).

#      The send-keys -M flag may be used to forward a mouse event to a pane.

#      The default key bindings allow the mouse to be used to select and
#      resize panes, to copy text and to change window using the status line.
#      These take effect if the mouse option is turned on.
