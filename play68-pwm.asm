;       PLAY68 PWM output 
;       by Robin Grosset
	code
	org	$1EE0       
        ldab #$E8   ; amplitude
        ldx #$0FFF  ; duration
pwm     ldaa #$AA   ; frequency
pulse   deca        ; pulse delay
        inca        ; waste time pt1
        deca        ; waste time pt2
        bne pulse
        stab $8010  ; output to sound card
        comb        ; completement value in b (invert)
        dex         ; decrement duration counter
        bra pwm 
        end