MYDATA SEGMENT
    NUM1 DB 10
    NUM2 DB 20
    SUM DB 00
MYDATA ENDS

MYCODE SEGMENT
    START:
        ASSUME CS:MYCODE,DS:MYDATA
        
        MOV AX,MYDATA
        MOV DS,AX
        MOV AH,NUM1
        MOV BH,NUM2
        ADD AH,BH
        MOV SUM,AH
        MOV AX,4C00H
        INT 21H
MYCODE ENDS