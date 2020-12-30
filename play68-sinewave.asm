;       PLAY68 Sine Wave
; 
;       by Robin Grosset
;
OUTCH  equ    $e1d1
INCH   equ    $e1ac
CONTRL equ    $e0e3
OUT4HS equ    $e0c8
OUT2HS equ    $e0ca
LF     equ    $0a
CR     equ    $0d
MIKBUG equ    $e0d0
PDATA1 equ    $e07e
	code  
        org $1EE0
        ldx #GREET
	jsr PDATA1      ; say hello
start   ldx #WAVE64
loop    ldaa 0,x
        beq start
        staa $8010      ; output to sound card
        inx
    	bra loop	; keep going
GREET	db	CR,LF,LF,LF,LF
        fcc "M68 Audio Board Sine Wave Play!"
        db	CR,LF,LF,4
        ; 633 Hz
WAVE64  fcb $DC,$28,$38,$A0,$AC,$B8,$64,$6C,$78,$E0,$E4,$EC,$F0,$F4,$F8,$F8
        fcb $F8,$F8,$F8,$F4,$F0,$EC,$E4,$E0,$78,$6C,$64,$B8,$AC,$A0,$38,$28
        fcb $DC,$D0,$C4,$58,$4C,$44,$98,$90,$84,$1C,$14,$10,$08,$04,$04,$01
        fcb $01,$01,$04,$04,$08,$10,$14,$1C,$84,$90,$98,$44,$4C,$58,$C4,$00
        fcb $00
        ; 1.25 Khz
WAVE32  fcb $DC,$38,$AC,$64,$78,$E4,$F0,$F8,$F8,$F8,$F0,$E4,$78,$64,$AC,$38
        fcb $DC,$C4,$4C,$98,$84,$14,$08,$04,$01,$04,$08,$14,$84,$98,$4C,$C4
        fcb $00
