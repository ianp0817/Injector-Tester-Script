#SingleInstance, Force

; Define hotkeys for different pause durations with Ctrl+Shift+Alt
!1::ClickAndWait(10000)   ; Ctrl+Shift+Alt+1 for 10 seconds
!2::ClickAndWait(20000)   ; Ctrl+Shift+Alt+2 for 20 seconds
!3::ClickAndWait(30000)   ; Ctrl+Shift+Alt+3 for 30 seconds
!4::ClickAndWait(60000)   ; Ctrl+Shift+Alt+4 for 60 seconds
!5::ClickAndWait(90000)   ; Ctrl+Shift+Alt+5 for 90 seconds
!6::ClickAndWait(120000)  ; Ctrl+Shift+Alt+6 for 120 seconds

Esc::ExitApp

ClickAndWait(duration) {
    ; Click the mouse at the current cursor position
    Click

    ; Wait for the specified duration in milliseconds
    Sleep, %duration%

    ; Click again
    Click
}
