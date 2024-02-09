#SingleInstance, Force

; Define hotkeys for custom wait time with Alt+0
!0::CustomWait()

; Define hotkeys for different pause durations with Alt
!1::ClickAndWait(10000)   ; Alt+1 for 10 seconds
!2::ClickAndWait(35000)   ; Alt+2 for 35 seconds
!3::ClickAndWait(20000)   ; Alt+3 for 20 seconds
!4::ClickAndWait(30000)   ; Alt+4 for 30 seconds
!5::ClickAndWait(60000)   ; Alt+5 for 60 seconds
!6::ClickAndWait(90000)   ; Alt+6 for 90 seconds
!7::ClickAndWait(120000)  ; Alt+7 for 120 seconds

Esc::ExitApp

CustomWait() {
    InputBox, CustomDuration, Custom Wait Time, Enter the wait time (sec), , , 125
    if ErrorLevel
        return  ; Exit if the user cancels the input box
    else if (CustomDuration = "") or (CustomDuration < 1) {
        MsgBox, Invalid input. Please enter a valid wait time.
        return  ; Exit if the input is invalid or empty
    }
    
    ClickAndWait(CustomDuration * 1000)  ; Convert seconds to milliseconds
}

ClickAndWait(duration) {
    ; Click the mouse at the current cursor position
    Click

    ; Wait for the specified duration in milliseconds
    Sleep, %duration%

    ; Click again
    Click
}
