;ZH: 二的三次方, EN: TWO_CUBED.ASM
;2cubed.asm is used for 8.3 adherence
;added debug output so you can compile this in MASM, run it, and see the values of al

	DOSSEG
	.MODEL SMALL
	.STACK 100h

.DATA
	debug db "AL value: 0x0","$"
	newline db 13,10,"$"

.CODE
	mov ax,@data
	mov ds,ax

	mov ax,0902h ;set al value to 2, set ah to output a string at DS:DX when int 21h is called
	call PRINTDEBUG
	
	mov dx,offset newline
	int 21h

	add al,al ;adds al to itself, which is 02+02
	call PRINTDEBUG
	
	mov dx,offset newline
	int 21h

	add al,al ;adds al to itself again, which is now 04+04
	call PRINTDEBUG

	mov ax,4C00h ;return to DOS
	int 21h

PRINTDEBUG PROC
	;hacky way of displaying the values with minimal code
	;this only works with single digit numbers
	push ax
	mov dx,offset debug
	int 21h

	mov ah,0Eh ;prints a single character
	add al,30h ;30-39 are the ASCII codes for 0-9
	int 10h    ;print character

	pop ax
ret

end