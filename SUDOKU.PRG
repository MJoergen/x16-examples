*
 � A SIMPLE BRUTE-FORCE SUDOKU SOLVER R � IT USES A RECURSIVE BACK-TRACKING � � ALGORITHM WITH A MANUALLY CONTROLLED STACK. �d � INITIAL BOARD POSITION �n � 3,0,0, 8,0,0, 6,4,7 �x � 0,0,2, 3,6,4, 0,0,0 �� � 4,6,8, 0,9,5, 2,3,1 �� � 	� � 0,0,3, 0,0,0, 5,0,4 )	� � 1,0,6, 5,4,7, 0,8,2 C	� � 5,7,4, 0,3,8, 0,0,0 I	� � c	� � 0,4,0, 1,0,0, 7,2,3 }	� � 8,2,1, 0,0,3, 4,0,0 �	� � 0,3,0, 4,0,2, 9,0,8 �	� � THIS BOARD IS SOLVED IN �	� �  8 SECONDS �	� � 47 POSITIONS �	� � 12 BACK-TRACKING 
,� ALLOCATE ARRAYS 
6� A(9,9)  
@� RI(81) -
J� RJ(81) J
�� INITIALIZE BOARD ARRAY V
�� I�1�9 b
�� J�1�9 o
�� A(I,J) w
�� J 
�� I �
�� CLEAR SCREEN AND POSITION CURSOR BELOW BOARD �
�� �(147) �
� I�1�10 �
� �
� I  � PRINT OUT INITIAL ARRAY WITH BLACK BACKGROUND *C�$01 #4� 9000 ->C�$61 N�� SET STARTING SQUARE SQUARE V�I�1 ^�J�1 u�� INITIALIZE STACK }�R�1 ��� STORE INITIAL TIME ��T�TI ��� RECURSION STARTS HERE ��� INCREMENT NUMBER OF POSITIONS ��PS�PS�1 4� FIND AN EMPTY SQUARE  >� A(I,J) � 0 � � 2300 *HJ�J�1 >R� J�10 � � 2100 F\J�1 PfI�I�1 dp� I�10 � � 2100 ��� THE SUDOKU IS FINISHED! ��� "SOLVED!" ��D�TI�T ��� �(D�60); "SECONDS." ��� PS; "POSITIONS." ��� BT; "BACK-TRACKING." ��� 
�� THIS SQUARE IS EMPTY (	� TRY ALL POSSIBLE VALUES 5	A(I,J)�1 V	� CHECK IF POSITION IS LEGAL a$	� 8000 �.	� JUMP IF POSITION IS LEGAL �8	� E�0 � � 2700 �B	� TRY NEXT POSSIBLE VALUE �L	A(I,J)�A(I,J)�1 �V	� A(I,J)�10 � 2330 �`	� WE HAVE TO BACKTRACK j	A(I,J)�0 t	� 7000 .~	� POP POSITION FROM STACK 8�	R�R�1 I�	� R�0 � 2550 U�	I�RI(R) a�	J�RJ(R) ~�	� UPDATE STACK ON SCREEN ��	΄ 0,256�R�100,32 ��	΄ 0,256�R�104,32 ��	� 7000 ��	� INCREMENT NUMBER OF BACK-TRACKS ��	BT�BT�1 ��	� 2370 �	� "NO SOLUTION"  
� (�
� RECURSION STARTS HERE :�
� PRINT VALUE E�
� 7000 c�
� STORE POSITION IN STACK o�
RI(R)�I {�
RJ(R)�J ��
� UPDATE STACK ON SCREEN ��
΄ 0,256�R�100,I�48 ��
΄ 0,256�R�104,J�48 ��
R�R�1 ��
� JUMP BACK AND SEARCH SOME MORE. �
� 2000  X� DISPLAY VALUE AT (I,J) 3bADDR�256�I�2�J Kl� A(I,J)�0 � � 7060 cv΄ 0,ADDR,A(I,J)�48 u�΄ 0,ADDR�1,C {�� ��΄ 0,ADDR,$20 ��΄ 0,ADDR�1,$61 ��� �@� CHECK IF THERE IS AN ERROR IN SQUARE (I,J) �JE�1 ��� K�1�9 ��� J�K � � 8130 �� A(I,J)�A(I,K) � � �� K + � K�1�9 > � I�K � � 8230 V � A(I,J)�A(K,J) � � ^& � K pl CI��((I�1)�3) �v CJ��((J�1)�3) �� � KI�CI�3�1 � CI�3�3 �� � KJ�CJ�3�1 � CJ�3�3 �� � KI�I � KJ�J � � 8360 �� � A(I,J)�A(KI,KJ) � � �� � KJ �� � KI � E�0 	� � (#� PRINT OUT ARRAY +2#� I�1�9 7<#� J�1�9 BF#� 7000 JP#� J RZ#� I Xd#�   