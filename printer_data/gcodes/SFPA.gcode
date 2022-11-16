; ### Klipper Pressure Advance Calibration Pattern ###
; -------------------------------------------
;
; Printer: Salad Fork
; Filament: ABS
; Created: Sun Nov 13 2022 10:18:16 GMT-0800 (Pacific Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Start G-code = ; PRINT_START EXTRUDER=245 BED=110 ; If using parameter-ized PRINT_START
; 
; End G-code = ; PRINT_END
; 
; Retraction Distance = 0.4 mm
; Layer Height = 0.25 mm
; Extruder Name = extruder 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 160 mm
; Bed Size Y = 160 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 300 mm/min
; Fast Printing Speed = 7200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 2000 mm/s^2
;
; Settings Pattern:
; Starting Value Factor = 0
; Ending Value Factor = 0.1
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Use FWRETRACT = false
; Extrusion Multiplier = 0.94
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 0 s
;
; prepare printing
;
ACTIVATE_EXTRUDER EXTRUDER=extruder
PRINT_START EXTRUDER=245 BED=110 ; If using parameter-ized PRINT_START

G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
SET_VELOCITY_LIMIT ACCEL=2000 ACCEL_TO_DECEL=1000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 S0
G1 X80 Y80 F7200 ; move to start
G1 Z0.25 F300 ; Move to layer height
;
; prime nozzle
;
G1 X31 Y17.5 F7200 ; move to start
G1 X31 Y142.5 E15.59069 F1800 ; print line
G1 X31.72 Y142.5 F7200 ; move to start
G1 X31.72 Y17.5 E15.59069 F1800 ; print line
G1 E-0.4 F1800 ; retract
;
; print anchor frame
G1 E0.4 F1800 ; un-retract
G1 X41 Y14.5 F7200 ; move to start
G1 X41 Y120.5 E5.46817 F300 ; print line
G1 X41.48 Y120.5 F7200 ; move to start
G1 X41.48 Y14.5 E5.46817 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X121 Y14.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X121 Y120.5 E5.46817 F300 ; print line
G1 X120.52 Y120.5 F7200 ; move to start
G1 X120.52 Y14.5 E5.46817 F300 ; print line
G1 E-0.4 F1800 ; retract
;
; start the Test pattern
;
G1 X41 Y17.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; set Pressure Advance
M117 K0 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y17.5 E0.93794 F300 ; print line
G1 X101 Y17.5 E1.87587 F7200 ; print line
G1 X121 Y17.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y22.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; set Pressure Advance
M117 K0.005 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y22.5 E0.93794 F300 ; print line
G1 X101 Y22.5 E1.87587 F7200 ; print line
G1 X121 Y22.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y27.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; set Pressure Advance
M117 K0.01 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y27.5 E0.93794 F300 ; print line
G1 X101 Y27.5 E1.87587 F7200 ; print line
G1 X121 Y27.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y32.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; set Pressure Advance
M117 K0.015 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y32.5 E0.93794 F300 ; print line
G1 X101 Y32.5 E1.87587 F7200 ; print line
G1 X121 Y32.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y37.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; set Pressure Advance
M117 K0.02 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y37.5 E0.93794 F300 ; print line
G1 X101 Y37.5 E1.87587 F7200 ; print line
G1 X121 Y37.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y42.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; set Pressure Advance
M117 K0.025 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y42.5 E0.93794 F300 ; print line
G1 X101 Y42.5 E1.87587 F7200 ; print line
G1 X121 Y42.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y47.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; set Pressure Advance
M117 K0.03 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y47.5 E0.93794 F300 ; print line
G1 X101 Y47.5 E1.87587 F7200 ; print line
G1 X121 Y47.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y52.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; set Pressure Advance
M117 K0.035 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y52.5 E0.93794 F300 ; print line
G1 X101 Y52.5 E1.87587 F7200 ; print line
G1 X121 Y52.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y57.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; set Pressure Advance
M117 K0.04 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y57.5 E0.93794 F300 ; print line
G1 X101 Y57.5 E1.87587 F7200 ; print line
G1 X121 Y57.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y62.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; set Pressure Advance
M117 K0.045 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y62.5 E0.93794 F300 ; print line
G1 X101 Y62.5 E1.87587 F7200 ; print line
G1 X121 Y62.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y67.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; set Pressure Advance
M117 K0.05 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y67.5 E0.93794 F300 ; print line
G1 X101 Y67.5 E1.87587 F7200 ; print line
G1 X121 Y67.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y72.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; set Pressure Advance
M117 K0.055 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y72.5 E0.93794 F300 ; print line
G1 X101 Y72.5 E1.87587 F7200 ; print line
G1 X121 Y72.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y77.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; set Pressure Advance
M117 K0.06 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y77.5 E0.93794 F300 ; print line
G1 X101 Y77.5 E1.87587 F7200 ; print line
G1 X121 Y77.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y82.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; set Pressure Advance
M117 K0.065 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y82.5 E0.93794 F300 ; print line
G1 X101 Y82.5 E1.87587 F7200 ; print line
G1 X121 Y82.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y87.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; set Pressure Advance
M117 K0.07 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y87.5 E0.93794 F300 ; print line
G1 X101 Y87.5 E1.87587 F7200 ; print line
G1 X121 Y87.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y92.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; set Pressure Advance
M117 K0.075 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y92.5 E0.93794 F300 ; print line
G1 X101 Y92.5 E1.87587 F7200 ; print line
G1 X121 Y92.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y97.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; set Pressure Advance
M117 K0.08 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y97.5 E0.93794 F300 ; print line
G1 X101 Y97.5 E1.87587 F7200 ; print line
G1 X121 Y97.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y102.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.085 EXTRUDER=extruder ; set Pressure Advance
M117 K0.085 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y102.5 E0.93794 F300 ; print line
G1 X101 Y102.5 E1.87587 F7200 ; print line
G1 X121 Y102.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y107.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.09 EXTRUDER=extruder ; set Pressure Advance
M117 K0.09 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y107.5 E0.93794 F300 ; print line
G1 X101 Y107.5 E1.87587 F7200 ; print line
G1 X121 Y107.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y112.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.095 EXTRUDER=extruder ; set Pressure Advance
M117 K0.095 ; 
G1 E0.4 F1800 ; un-retract
G1 X61 Y112.5 E0.93794 F300 ; print line
G1 X101 Y112.5 E1.87587 F7200 ; print line
G1 X121 Y112.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X41 Y117.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set Pressure Advance 0
G1 X61 Y122.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X61 Y142.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 X101 Y122.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X101 Y142.5 E0.93794 F300 ; print line
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
;
; print K-values
;
G1 X123 Y15.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y15.5 E0.09379 F300 ; 0
G1 X125 Y17.5 E0.09379 F300 ; 0
G1 X125 Y19.5 E0.09379 F300 ; 0
G1 X123 Y19.5 E0.09379 F300 ; 0
G1 X123 Y17.5 E0.09379 F300 ; 0
G1 X123 Y15.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y25.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y25.5 E0.09379 F300 ; 0
G1 X125 Y27.5 E0.09379 F300 ; 0
G1 X125 Y29.5 E0.09379 F300 ; 0
G1 X123 Y29.5 E0.09379 F300 ; 0
G1 X123 Y27.5 E0.09379 F300 ; 0
G1 X123 Y25.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y25.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y25.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y25.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y25.5 E0.09379 F300 ; 0
G1 X129 Y27.5 E0.09379 F300 ; 0
G1 X129 Y29.5 E0.09379 F300 ; 0
G1 X127 Y29.5 E0.09379 F300 ; 0
G1 X127 Y27.5 E0.09379 F300 ; 0
G1 X127 Y25.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y25.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y27.5 E0.09379 F300 ; 1
G1 X130 Y29.5 E0.09379 F300 ; 1
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y35.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y35.5 E0.09379 F300 ; 0
G1 X125 Y37.5 E0.09379 F300 ; 0
G1 X125 Y39.5 E0.09379 F300 ; 0
G1 X123 Y39.5 E0.09379 F300 ; 0
G1 X123 Y37.5 E0.09379 F300 ; 0
G1 X123 Y35.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y35.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y35.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y35.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y35.5 E0.09379 F300 ; 0
G1 X129 Y37.5 E0.09379 F300 ; 0
G1 X129 Y39.5 E0.09379 F300 ; 0
G1 X127 Y39.5 E0.09379 F300 ; 0
G1 X127 Y37.5 E0.09379 F300 ; 0
G1 X127 Y35.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y35.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y37.5 F7200 ; move to start
G1 X130 Y39.5 F7200 ; move to start
G1 X132 Y39.5 E0.09379 F300 ; 2
G1 X132 Y37.5 E0.09379 F300 ; 2
G1 X130 Y37.5 E0.09379 F300 ; 2
G1 X130 Y35.5 E0.09379 F300 ; 2
G1 X132 Y35.5 E0.09379 F300 ; 2
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y45.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y45.5 E0.09379 F300 ; 0
G1 X125 Y47.5 E0.09379 F300 ; 0
G1 X125 Y49.5 E0.09379 F300 ; 0
G1 X123 Y49.5 E0.09379 F300 ; 0
G1 X123 Y47.5 E0.09379 F300 ; 0
G1 X123 Y45.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y45.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y45.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y45.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y45.5 E0.09379 F300 ; 0
G1 X129 Y47.5 E0.09379 F300 ; 0
G1 X129 Y49.5 E0.09379 F300 ; 0
G1 X127 Y49.5 E0.09379 F300 ; 0
G1 X127 Y47.5 E0.09379 F300 ; 0
G1 X127 Y45.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y45.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y47.5 F7200 ; move to start
G1 X130 Y49.5 F7200 ; move to start
G1 X132 Y49.5 E0.09379 F300 ; 3
G1 X132 Y47.5 E0.09379 F300 ; 3
G1 X132 Y45.5 E0.09379 F300 ; 3
G1 X130 Y45.5 E0.09379 F300 ; 3
G1 X130 Y47.5 F7200 ; move to start
G1 X132 Y47.5 E0.09379 F300 ; 3
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y55.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y55.5 E0.09379 F300 ; 0
G1 X125 Y57.5 E0.09379 F300 ; 0
G1 X125 Y59.5 E0.09379 F300 ; 0
G1 X123 Y59.5 E0.09379 F300 ; 0
G1 X123 Y57.5 E0.09379 F300 ; 0
G1 X123 Y55.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y55.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y55.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y55.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y55.5 E0.09379 F300 ; 0
G1 X129 Y57.5 E0.09379 F300 ; 0
G1 X129 Y59.5 E0.09379 F300 ; 0
G1 X127 Y59.5 E0.09379 F300 ; 0
G1 X127 Y57.5 E0.09379 F300 ; 0
G1 X127 Y55.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y55.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y57.5 F7200 ; move to start
G1 X130 Y59.5 F7200 ; move to start
G1 X130 Y57.5 E0.09379 F300 ; 4
G1 X132 Y57.5 E0.09379 F300 ; 4
G1 X132 Y59.5 F7200 ; move to start
G1 X132 Y57.5 E0.09379 F300 ; 4
G1 X132 Y55.5 E0.09379 F300 ; 4
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y65.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y65.5 E0.09379 F300 ; 0
G1 X125 Y67.5 E0.09379 F300 ; 0
G1 X125 Y69.5 E0.09379 F300 ; 0
G1 X123 Y69.5 E0.09379 F300 ; 0
G1 X123 Y67.5 E0.09379 F300 ; 0
G1 X123 Y65.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y65.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y65.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y65.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y65.5 E0.09379 F300 ; 0
G1 X129 Y67.5 E0.09379 F300 ; 0
G1 X129 Y69.5 E0.09379 F300 ; 0
G1 X127 Y69.5 E0.09379 F300 ; 0
G1 X127 Y67.5 E0.09379 F300 ; 0
G1 X127 Y65.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y65.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X132 Y65.5 E0.09379 F300 ; 5
G1 X132 Y67.5 E0.09379 F300 ; 5
G1 X130 Y67.5 E0.09379 F300 ; 5
G1 X130 Y69.5 E0.09379 F300 ; 5
G1 X132 Y69.5 E0.09379 F300 ; 5
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y75.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y75.5 E0.09379 F300 ; 0
G1 X125 Y77.5 E0.09379 F300 ; 0
G1 X125 Y79.5 E0.09379 F300 ; 0
G1 X123 Y79.5 E0.09379 F300 ; 0
G1 X123 Y77.5 E0.09379 F300 ; 0
G1 X123 Y75.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y75.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y75.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y75.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y75.5 E0.09379 F300 ; 0
G1 X129 Y77.5 E0.09379 F300 ; 0
G1 X129 Y79.5 E0.09379 F300 ; 0
G1 X127 Y79.5 E0.09379 F300 ; 0
G1 X127 Y77.5 E0.09379 F300 ; 0
G1 X127 Y75.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y75.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y77.5 F7200 ; move to start
G1 X132 Y77.5 E0.09379 F300 ; 6
G1 X132 Y75.5 E0.09379 F300 ; 6
G1 X130 Y75.5 E0.09379 F300 ; 6
G1 X130 Y77.5 E0.09379 F300 ; 6
G1 X130 Y79.5 E0.09379 F300 ; 6
G1 X132 Y79.5 E0.09379 F300 ; 6
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y85.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y85.5 E0.09379 F300 ; 0
G1 X125 Y87.5 E0.09379 F300 ; 0
G1 X125 Y89.5 E0.09379 F300 ; 0
G1 X123 Y89.5 E0.09379 F300 ; 0
G1 X123 Y87.5 E0.09379 F300 ; 0
G1 X123 Y85.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y85.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y85.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y85.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y85.5 E0.09379 F300 ; 0
G1 X129 Y87.5 E0.09379 F300 ; 0
G1 X129 Y89.5 E0.09379 F300 ; 0
G1 X127 Y89.5 E0.09379 F300 ; 0
G1 X127 Y87.5 E0.09379 F300 ; 0
G1 X127 Y85.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y85.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y87.5 F7200 ; move to start
G1 X130 Y89.5 F7200 ; move to start
G1 X132 Y89.5 E0.09379 F300 ; 7
G1 X132 Y87.5 E0.09379 F300 ; 7
G1 X132 Y85.5 E0.09379 F300 ; 7
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y95.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y95.5 E0.09379 F300 ; 0
G1 X125 Y97.5 E0.09379 F300 ; 0
G1 X125 Y99.5 E0.09379 F300 ; 0
G1 X123 Y99.5 E0.09379 F300 ; 0
G1 X123 Y97.5 E0.09379 F300 ; 0
G1 X123 Y95.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y95.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y95.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y95.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y95.5 E0.09379 F300 ; 0
G1 X129 Y97.5 E0.09379 F300 ; 0
G1 X129 Y99.5 E0.09379 F300 ; 0
G1 X127 Y99.5 E0.09379 F300 ; 0
G1 X127 Y97.5 E0.09379 F300 ; 0
G1 X127 Y95.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y95.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X130 Y97.5 F7200 ; move to start
G1 X132 Y97.5 E0.09379 F300 ; 8
G1 X132 Y95.5 E0.09379 F300 ; 8
G1 X130 Y95.5 E0.09379 F300 ; 8
G1 X130 Y97.5 E0.09379 F300 ; 8
G1 X130 Y99.5 E0.09379 F300 ; 8
G1 X132 Y99.5 E0.09379 F300 ; 8
G1 X132 Y97.5 E0.09379 F300 ; 8
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X123 Y105.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.4 F1800 ; un-retract
G1 X125 Y105.5 E0.09379 F300 ; 0
G1 X125 Y107.5 E0.09379 F300 ; 0
G1 X125 Y109.5 E0.09379 F300 ; 0
G1 X123 Y109.5 E0.09379 F300 ; 0
G1 X123 Y107.5 E0.09379 F300 ; 0
G1 X123 Y105.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X126 Y105.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X126 Y105.9 E0.01876 F300 ; dot
G1 E-0.4 F1800 ; retract
G1 X127 Y105.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X129 Y105.5 E0.09379 F300 ; 0
G1 X129 Y107.5 E0.09379 F300 ; 0
G1 X129 Y109.5 E0.09379 F300 ; 0
G1 X127 Y109.5 E0.09379 F300 ; 0
G1 X127 Y107.5 E0.09379 F300 ; 0
G1 X127 Y105.5 E0.09379 F300 ; 0
G1 E-0.4 F1800 ; retract
G1 X130 Y105.5 F7200 ; move to start
G1 E0.4 F1800 ; un-retract
G1 X132 Y105.5 E0.09379 F300 ; 9
G1 X132 Y107.5 E0.09379 F300 ; 9
G1 X130 Y107.5 E0.09379 F300 ; 9
G1 X130 Y109.5 E0.09379 F300 ; 9
G1 X132 Y109.5 E0.09379 F300 ; 9
G1 X132 Y107.5 E0.09379 F300 ; 9
G1 E-0.4 F1800 ; retract
G1 Z0.35 F300 ; zHop
;
; FINISH
;
PRINT_END

;