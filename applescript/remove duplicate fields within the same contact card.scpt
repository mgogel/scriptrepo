FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    B D 	 o      ���� 0 targetgroup targetGroup��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l        O       r        n        2   ��
�� 
azf4  4    �� 
�� 
azf5  o   
 ���� 0 targetgroup targetGroup  o      ���� 0 	thepeople 	thePeople  m      �                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��      TEST GROUP OF PEOPLE     �   *   T E S T   G R O U P   O F   P E O P L E      l     ��   !��     O I-- tell application "Contacts" to set thePeople to people  -- ALL PEOPLE     ! � " " � - -   t e l l   a p p l i c a t i o n   " C o n t a c t s "   t o   s e t   t h e P e o p l e   t o   p e o p l e     - -   A L L   P E O P L E     # $ # l     ��������  ��  ��   $  % & % l      �� ' (��   ' + % Run the Handler for  Social profiles    ( � ) ) J   R u n   t h e   H a n d l e r   f o r     S o c i a l   p r o f i l e s &  * + * l    ,���� , n    - . - I    �� /���� *0 deletesocialentries deleteSocialEntries /  0�� 0 o    ���� 0 	thepeople 	thePeople��  ��   .  f    ��  ��   +  1 2 1 l     ��������  ��  ��   2  3 4 3 l      �� 5 6��   5 #  Run the Handler for  phones     6 � 7 7 :   R u n   t h e   H a n d l e r   f o r     p h o n e s   4  8 9 8 l    :���� : n    ; < ; I    �� =���� &0 deletesocialphone deleteSocialPHONE =  >�� > o    ���� 0 	thepeople 	thePeople��  ��   <  f    ��  ��   9  ? @ ? l     ��������  ��  ��   @  A B A l      �� C D��   C  	 Handlers    D � E E    H a n d l e r s B  F G F i      H I H I      �� J���� &0 deletesocialphone deleteSocialPHONE J  K�� K o      ���� 0 	thepeople 	thePeople��  ��   I k     � L L  M N M l     ��������  ��  ��   N  O P O O     � Q R Q k    � S S  T U T l   ��������  ��  ��   U  V W V l   ��������  ��  ��   W  X Y X l   ��������  ��  ��   Y  Z [ Z l   ��������  ��  ��   [  \ ] \ l    �� ^ _��   ^ @ : iterate over the people - get each person in the contacts    _ � ` ` t   i t e r a t e   o v e r   t h e   p e o p l e   -   g e t   e a c h   p e r s o n   i n   t h e   c o n t a c t s ]  a�� a Y    � b�� c d�� b k    � e e  f g f r     h i h n     j k j 4    �� l
�� 
cobj l o    ���� 0 i   k o    ���� 0 	thepeople 	thePeople i o      ���� 0 this_person   g  m n m l   ��������  ��  ��   n  o p o l    �� q r��   q &  get all the phones of the person    r � s s @ g e t   a l l   t h e   p h o n e s   o f   t h e   p e r s o n p  t u t r    ! v w v l    x���� x n     y z y 1    ��
�� 
pALL z n     { | { 2   ��
�� 
az20 | o    ���� 0 this_person  ��  ��   w o      ���� 0 	thefields 	theFields u  } ~ } l  " "��������  ��  ��   ~   �  l  " "��������  ��  ��   �  � � � r   " & � � � J   " $����   � o      ���� 0 keepers   �  � � � l   ' '�� � ���   � 6 0 iterate over the phones and get a phone's value    � � � � `   i t e r a t e   o v e r   t h e   p h o n e s   a n d   g e t   a   p h o n e ' s   v a l u e �  � � � Y   ' � ��� � ��� � k   6 � � �  � � � r   6 < � � � n   6 : � � � 4   7 :�� �
�� 
cobj � o   8 9���� 0 i   � o   6 7���� 0 	thefields 	theFields � o      ���� 0 	this_item   �  � � � r   = B � � � n   = @ � � � 1   > @��
�� 
az17 � o   = >���� 0 	this_item   � o      ���� 0 	thisvalue 	thisValue �  � � � l  C C��������  ��  ��   �  � � � Z   C � � ��� � � H   C G � � E  C F � � � o   C D���� 0 keepers   � o   D E���� 0 	thisvalue 	thisValue � k   J P � �  � � � l   J J�� � ���   � + % Not in the list of keepers so add it    � � � � J   N o t   i n   t h e   l i s t   o f   k e e p e r s   s o   a d d   i t �  � � � s   J N � � � o   J K���� 0 	thisvalue 	thisValue � n       � � �  ;   L M � o   K L���� 0 keepers   �  ��� � l  O O��������  ��  ��  ��  ��   � k   S � � �  � � � l   S S�� � ���   � < 6 Was already  in the list of keepers try and delete it    � � � � l   W a s   a l r e a d y     i n   t h e   l i s t   o f   k e e p e r s   t r y   a n d   d e l e t e   i t �  ��� � Q   S � � ��� � k   V y � �  � � � r   V [ � � � n   V Y � � � 1   W Y��
�� 
ID   � o   V W���� 0 	this_item   � o      ���� 0 thisid thisID �  � � � r   \ j � � � l  \ h ����� � 6  \ h � � � n   \ _ � � � 2   ] _��
�� 
az20 � o   \ ]���� 0 this_person   � =  ` g � � � 1   a c��
�� 
ID   � o   d f���� 0 thisid thisID��  ��   � o      ���� 0 thisd thisD �  � � � l  k k��������  ��  ��   �  � � � I  k s�� ���
�� .coredelonull���     obj  � l  k o ����� � n   k o � � � 4   l o�� �
�� 
cobj � m   m n��  � o   k l�~�~ 0 thisd thisD��  ��  ��   �  � � � l  t t�}�|�{�}  �|  �{   �  ��z � I  t y�y�x�w
�y .coresavenull���     null�x  �w  �z   � R      �v�u�t
�v .ascrerr ****      � ****�u  �t  ��  ��   �  � � � l  � ��s�r�q�s  �r  �q   �  ��p � l  � ��o�n�m�o  �n  �m  �p  �� 0 i   � m   * +�l�l  � n   + 1 � � � m   . 0�k
�k 
nmbr � n  + . � � � 2  , .�j
�j 
cobj � o   + ,�i�i 0 	thefields 	theFields��   �  ��h � l  � ��g�f�e�g  �f  �e  �h  �� 0 i   c m    �d�d  d n     � � � m    �c
�c 
nmbr � n    � � � 2  	 �b
�b 
cobj � o    	�a�a 0 	thepeople 	thePeople��  ��   R m      � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��   P  ��` � l  � ��_�^�]�_  �^  �]  �`   G  � � � l     �\�[�Z�\  �[  �Z   �  � � � l     �Y�X�W�Y  �X  �W   �  ��V � i     � � � I      �U ��T�U *0 deletesocialentries deleteSocialEntries �  ��S � o      �R�R 0 	thepeople 	thePeople�S  �T   � k     � � �  � � � r      � � � J      � �  � � � m      � � � � �  T w i t t e r �  � � � m     � � � � �  L i n k e d i n �  �Q  m     �  F a c e b o o k�Q   � o      �P�P 
0 social   �  O    � k    � 	 l   �O�N�M�O  �N  �M  	 

 l   �L�K�J�L  �K  �J    l   �I�H�G�I  �H  �G    l   �F�E�D�F  �E  �D    l    �C�C   @ : iterate over the people - get each person in the contacts    � t   i t e r a t e   o v e r   t h e   p e o p l e   -   g e t   e a c h   p e r s o n   i n   t h e   c o n t a c t s �B Y    ��A�@ k    �  r    ! n     4    �? 
�? 
cobj  o    �>�> 0 i   o    �=�= 0 	thepeople 	thePeople o      �<�< 0 this_person   !"! l  " "�;�:�9�;  �:  �9  " #$# l   " "�8%&�8  % ; 5 iterate over the social media types for this person    & �'' j   i t e r a t e   o v e r   t h e   s o c i a l   m e d i a   t y p e s   f o r   t h i s   p e r s o n  $ ()( Y   " �*�7+,�6* k   1 �-- ./. r   1 7010 n   1 5232 4   2 5�54
�5 
cobj4 o   3 4�4�4 0 i  3 o   1 2�3�3 
0 social  1 o      �2�2 0 this_soc  / 565 l   8 8�178�1  7 9 3get all the *type* of social profiles of the person   8 �99 f g e t   a l l   t h e   * t y p e *   o f   s o c i a l   p r o f i l e s   o f   t h e   p e r s o n6 :;: r   8 H<=< l  8 F>�0�/> 6  8 F?@? n   8 =ABA 1   ; =�.
�. 
pALLB n   8 ;CDC 2   9 ;�-
�- 
sp01D o   8 9�,�, 0 this_person  @ =  > EEFE 1   ? A�+
�+ 
az81F o   B D�*�* 0 this_soc  �0  �/  = o      �)�) 0 	thefields 	theFields; GHG l  I I�(�'�&�(  �'  �&  H IJI r   I MKLK J   I K�%�%  L o      �$�$ 0 keepers  J MNM l   N N�#OP�#  O @ : iterate over the ocial profile  and get a user name value   P �QQ t   i t e r a t e   o v e r   t h e   o c i a l   p r o f i l e     a n d   g e t   a   u s e r   n a m e   v a l u eN RSR Y   N �T�"UV�!T k   ] �WW XYX r   ] cZ[Z n   ] a\]\ 4   ^ a� ^
�  
cobj^ o   _ `�� 0 i  ] o   ] ^�� 0 	thefields 	theFields[ o      �� 0 	this_item  Y _`_ r   d iaba n   d gcdc 1   e g�
� 
az83d o   d e�� 0 	this_item  b o      �� 0 	thisvalue 	thisValue` efe l  j j����  �  �  f g�g Z   j �hi�jh H   j nkk E  j mlml o   j k�� 0 keepers  m o   k l�� 0 	thisvalue 	thisValuei s   q unon o   q r�� 0 	thisvalue 	thisValueo n      pqp  ;   s tq o   r s�� 0 keepers  �  j k   x �rr sts l   x x�uv�  u < 6 Was already  in the list of keepers try and delete it   v �ww l   W a s   a l r e a d y     i n   t h e   l i s t   o f   k e e p e r s   t r y   a n d   d e l e t e   i tt xyx r   x }z{z n   x {|}| 1   y {�
� 
ID  } o   x y�� 0 	this_item  { o      �� 0 thisid thisIDy ~~ r   ~ ���� l  ~ ����� 6  ~ ���� n   ~ ���� 2    ��

�
 
sp01� o   ~ �	�	 0 this_person  � =  � ���� 1   � ��
� 
ID  � o   � ��� 0 thisid thisID�  �  � o      �� 0 thisd thisD ��� l  � �����  �  �  � ��� I  � ����
� .coredelonull���     obj � l  � ��� ��� n   � ���� m   � ���
�� 
az70� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thisd thisD�   ��  �  � ��� I  � ������
�� .coredelonull���     obj � l  � ������� n   � ���� 1   � ���
�� 
az83� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thisd thisD��  ��  ��  � ��� l  � ���������  ��  ��  � ��� I  � ������
�� .coredelonull���     obj � l  � ������� n   � ���� m   � ���
�� 
az70� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thisd thisD��  ��  ��  � ��� I  � ������
�� .coredelonull���     obj � l  � ������� n   � ���� 1   � ���
�� 
az83� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thisd thisD��  ��  ��  � ��� I  � �������
�� .coresavenull���     null��  ��  � ���� l  � ���������  ��  ��  ��  �  �" 0 i  U m   Q R���� V n   R X��� m   U W��
�� 
nmbr� n  R U��� 2  S U��
�� 
cobj� o   R S���� 0 	thefields 	theFields�!  S ���� l  � ���������  ��  ��  ��  �7 0 i  + m   % &���� , n   & ,��� m   ) +��
�� 
nmbr� n  & )��� 2  ' )��
�� 
cobj� o   & '���� 
0 social  �6  ) ���� l  � ���������  ��  ��  ��  �A 0 i   m    ����  n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� o    ���� 0 	thepeople 	thePeople�@  �B   m    	���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��   ���� l  � ���������  ��  ��  ��  �V       ��������  � �������� &0 deletesocialphone deleteSocialPHONE�� *0 deletesocialentries deleteSocialEntries
�� .aevtoappnull  �   � ****� �� I���������� &0 deletesocialphone deleteSocialPHONE�� ����� �  ���� 0 	thepeople 	thePeople��  � 	�������������������� 0 	thepeople 	thePeople�� 0 i  �� 0 this_person  �� 0 	thefields 	theFields�� 0 keepers  �� 0 	this_item  �� 0 	thisvalue 	thisValue�� 0 thisid thisID�� 0 thisd thisD�  ����������������������
�� 
cobj
�� 
nmbr
�� 
az20
�� 
pALL
�� 
az17
�� 
ID  �  
�� .coredelonull���     obj 
�� .coresavenull���     null��  ��  �� �� � �k��-�,Ekh ��/E�O��-�,E�OjvE�O ak��-�,Ekh ��/E�O��,E�O�� ��6GOPY 1 (��,E�O��-�[�,\Z�81E�O��k/j O*j 	W X 
 hOP[OY��OP[OY��UOP� �� ����������� *0 deletesocialentries deleteSocialEntries�� ����� �  ���� 0 	thepeople 	thePeople��  � ������������������������ 0 	thepeople 	thePeople�� 
0 social  �� 0 i  �� 0 this_person  �� 0 this_soc  �� 0 	thefields 	theFields�� 0 keepers  �� 0 	this_item  �� 0 	thisvalue 	thisValue�� 0 thisid thisID�� 0 thisd thisD�  � �����������������������
�� 
cobj
�� 
nmbr
�� 
sp01
�� 
pALL
�� 
az81
�� 
az83
�� 
ID  
�� 
az70
�� .coredelonull���     obj 
�� .coresavenull���     null�� ����mvE�O� � �k��-�,Ekh ��/E�O �k��-�,Ekh ��/E�O��-�,�[�,\Z�81E�OjvE�O vk��-�,Ekh ��/E�O��,E�O�� 	��6GY J��,E�O��-�[�,\Z�81E�O��k/�,j O��k/�,j O��k/�,j O��k/�,j O*j OP[OY��OP[OY�dOP[OY�GUOP� �����������
�� .aevtoappnull  �   � ****� k     ��  ��  ��  *��  8����  ��  ��  �  �  
�� ��������~�� 0 targetgroup targetGroup
�� 
azf5
�� 
azf4�� 0 	thepeople 	thePeople� *0 deletesocialentries deleteSocialEntries�~ &0 deletesocialphone deleteSocialPHONE��  �E�O� 
*��/�-E�UO)�k+ O)�k+ ascr  ��ޭ