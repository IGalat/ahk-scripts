show_coord_toggle := false


show_coordinates() {
    global show_coord_toggle

    show_coord_toggle := !show_coord_toggle

    if (show_coord_toggle) {
        SetTimer, show_coordinates_toggle, 0 ; on, update constantly
    } else {
        SetTimer, show_coordinates_toggle, off
        Tooltip
    }
}

show_coordinates_toggle() {
    CoordMode, ToolTip, Screen ; makes tooltip appear at position, relative to screen.
    CoordMode, Mouse, Screen ; makes mouse coordinates be relative to screen.
    MouseGetPos xx, yy ; get mouse x and y position, store as %xx% and %yy%
    Tooltip %xx% %yy%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
}