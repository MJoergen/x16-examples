,
 � THIS PROGRAM SOLVES A SIMPLE PUZZLE. P � THE GOAL IS TO PLACE A NUMBER y �  OF PAIRS IN A LINE, SUCH THAT THE �( �  NUMBER OF PLACES BETWEEN THE TWO NUMBERS �2 �  IN A PAIR IS EQUAL TO THE NUMBER. �< � ONE OF THE TWO SOLUTIONS FOR N=4 	F �  IS: 2 3 4 2 1 3 1 4. ;	P � FOR N=7 THERE ARE 52 SOLUTIONS, g	Z �  WHICH ARE FOUND IN APPROX 2 MINUTES. �	d � THE NUMBER OF PAIRS IS IN THE VARIABLE N. �	n � THE CURRENT PAIR BEING CONSIDERED �	x �  IS IN THE VARIABLE I. 
� � THE ALGORITHM IS A RECURSIVE DEPTH FIRST. E
,� INITIALIZE THE VARIABLE AND PREPARE FOR RECURSION. O
6� N�7 ^
@� A(N�N�1) i
J� S(N) s
T� I�1 |
^P�TI �
h� 1100 �
rQ�TI �
|� "TIME=";(Q�P)�60;"SECONDS" �
�� �
�� THE RECURSIVE LOOP. �
�� ON ENTRY, THE ARRAY A() CONTAINS ��  THE PLACES ALREADY OCCUPIED. C� ON ENTRY, THE VARIBLE I CONTAINS m�  THE CURRENT PAIR BEING CONSIDERED. �� ON ENTRY, THE ARRAY S() CONTAINS �$�  POSITIONS OF EACH PAIR SO FAR. �L� I�N � � 2000 �V� CLEAR START OF THIS PAIR �`J�0 (�� LOOP OVER ALL POSSIBLE POSITIONS OF THIS PAIR @�� J�I�1 � N�N�1 � � i�� A(J) �� 0 � A(J�I�1) �� 0 � � 1500 �� POPULATE PAIR INTO ARRAY �A(J)�I �(A(J�I�1)�I �2� UPDATE STACK WITH CURRENT POSITION �<S(I)�J �F� RECURSIVELY PLACE THE NEXT PAIR PI�I�1 Z� 1100 dI�I�1 ,x� UNDO STACK 7�J�S(I) H�� UNDO ARRAY S�A(J)�0 b�A(J�I�1)�0 ��� SEARCH REMAINING POSITIONS FOR THIS PAIR ��J�J�1 ��� 1200 ��� PRINT OUT A SOLUTION ��R�R�1 ��� "SOLUTION";R, ��� K�0 � N�N�1 ��� A(K); � K � �   