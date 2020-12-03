# The most basic of these moves your cursor up, down, left or right:

# Up: \u001b[{n}A
# Down: \u001b[{n}B
# Right: \u001b[{n}C
# Left: \u001b[{n}D
export LUP_A='\u001b['    # Up: \u001b[{n}A moves cursor up by n \u001b[{3}A
export LDOWN_B='\u001b['  # Down: \u001b[{n}B moves cursor down by n
export LRIGHT_C='\u001b[' # Right: \u001b[{n}C moves cursor right by n
export LLEFT_D='\u001b['  # Left: \u001b[{n}D moves cursor left by n
export LNX_E='\u001b['    # Next Line: \u001b[{n}E moves cursor to beginning of line n lines down
export LPV_F='\u001b['    # Prev Line: \u001b[{n}F moves cursor to beginning of line n lines up
export LCOL_G='\u001b['   # Set Column: \u001b[{n}G moves cursor to column n
export LPOSRC_H='\u001b[' # Set Position: \u001b[{n};{m}H moves cursor to row n column m
export LCS0='\u001b[0J'   # Clear Screen: \u001b[{n}J n=0 clears from cursor until end of screen,
export LCS1='\u001b[1J'   # Clear Screen: \u001b[{n}J n=1 clears from cursor to beginning of screen
export LCS2='\u001b[2J'   # Clear Screen: \u001b[{n}J n=2 clears entire screen
export LCL0='\u001b[0K'   # Clear Line: \u001b[{n}K n=0 clears from cursor to end of line
export LCL1='\u001b[1K'   # Clear Line: \u001b[{n}K n=1 clears from cursor to start of line
export LCL2='\u001b[2K'   # Clear Line: \u001b[{n}K n=2 clears entire line
export SPS='\u001b[s'     # Save Position: \u001b[{s} saves the current cursor position
export RPS='\u001b[u'     # Save Position: \u001b[{u} restores the cursor to the last saved position
export PZTX='\u001b[1;0H'
export PZT='\u001b[2;0H'
export PZTED='\u001b[0;50H'
export CLRZ='\u001b[2J'
export DW="${LDOWN_B}1B"
export UPW="${LUP_A}1A"
export CLRLN='\u001b[2K \u001b[0G'
export RWT='\u001b[54C'
export RWTT='\u001b[10C'
# The most basic of these moves your cursor up, down, left or right:

# Up: \u001b[{n}A
# Down: \u001b[{n}B
# Right: \u001b[{n}C
# Left: \u001b[{n}D
export LUP_A='\u001b['    # Up: \u001b[{n}A moves cursor up by n \u001b[{3}A
export LDOWN_B='\u001b['  # Down: \u001b[{n}B moves cursor down by n
export LRIGHT_C='\u001b[' # Right: \u001b[{n}C moves cursor right by n
export LLEFT_D='\u001b['  # Left: \u001b[{n}D moves cursor left by n
export LNX_E='\u001b['    # Next Line: \u001b[{n}E moves cursor to beginning of line n lines down
export LPV_F='\u001b['    # Prev Line: \u001b[{n}F moves cursor to beginning of line n lines up
export LCOL_G='\u001b['   # Set Column: \u001b[{n}G moves cursor to column n
export LPOSRC_H='\u001b[' # Set Position: \u001b[{n};{m}H moves cursor to row n column m
export LCS0='\u001b[0J'   # Clear Screen: \u001b[{n}J n=0 clears from cursor until end of screen,
export LCS1='\u001b[1J'   # Clear Screen: \u001b[{n}J n=1 clears from cursor to beginning of screen
export LCS2='\u001b[2J'   # Clear Screen: \u001b[{n}J n=2 clears entire screen
export LCL0='\u001b[0K'   # Clear Line: \u001b[{n}K n=0 clears from cursor to end of line
export LCL1='\u001b[1K'   # Clear Line: \u001b[{n}K n=1 clears from cursor to start of line
export LCL2='\u001b[2K'   # Clear Line: \u001b[{n}K n=2 clears entire line
export SPS='\u001b[s'     # Save Position: \u001b[{s} saves the current cursor position
export RPS='\u001b[u'     # Save Position: \u001b[{u} restores the cursor to the last saved position
export PZTX='\u001b[1;0H'
export PZT='\u001b[2;0H'
export PZTED='\u001b[0;50H'
export CLRZ='\u001b[2J'
export DW="${LDOWN_B}1B"
export UPW="${LUP_A}1A"
export CLRLN='\u001b[2K \u001b[0G'
export RWT='\u001b[54C'
export RWTT='\u001b[10C'
