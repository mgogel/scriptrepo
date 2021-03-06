FasdUAS 1.101.10   ��   ��    k             l     �� ��    ) # Remove Duplicate Phone Numbers 1.1       	  l     �� 
��   
 + % By Trevor Harmon <trevor@vocaro.com>    	     l     �� ��    : 4 License: GPL - http://www.gnu.org/copyleft/gpl.html         l     ������  ��        l      �� ��    � �
This script will walk through every *selected* contact in the Address Book and remove any duplicate phone numbers that it finds.
         l     ������  ��        l     ��  I    �� ��
�� .sysodlogaskr        TEXT  b         b         b         m        k eWarning: This script is designed to remove data! Be sure to back up your Address Book database first!     o    ��
�� 
ret   o    ��
�� 
ret   m         $ Do you still want to continue?   ��  ��     ! " ! l     ������  ��   "  # $ # l    %�� % I   �� &��
�� .sysodlogaskr        TEXT & m     ' ' � �This process can take several minutes to complete, depending on the number of Address Book contacts you have selected and the speed of your computer.   ��  ��   $  ( ) ( l     ������  ��   )  * + * l   � ,�� , O    � - . - k    � / /  0 1 0 r     2 3 2 m    ����   3 o      ���� 0 
duplicates   1  4 5 4 r     6 7 6 m    ����   7 o      ���� 0 people_with_duplicates   5  8 9 8 X    � :�� ; : k   1 � < <  = > = r   1 5 ? @ ? J   1 3����   @ o      ���� 0 unique_phones   >  A B A r   6 : C D C J   6 8����   D o      ���� 0 duplicate_phones   B  E F E X   ;  G�� H G k   M z I I  J K J r   M Y L M L n  M U N O N I   N U�� P���� 0 numbersonly numbersOnly P  Q�� Q n   N Q R S R 1   O Q��
�� 
az17 S o   N O���� 0 
this_phone  ��  ��   O  f   M N M o      ���� 0 phone_value   K  T�� T Z   Z z U V�� W U E  Z _ X Y X o   Z [���� 0 unique_phones   Y o   [ ^���� 0 phone_value   V k   b q Z Z  [ \ [ r   b k ] ^ ] b   b i _ ` _ o   b c���� 0 duplicate_phones   ` l  c h a�� a n   c h b c b 1   d h��
�� 
ID   c o   c d���� 0 
this_phone  ��   ^ o      ���� 0 duplicate_phones   \  d�� d r   l q e f e [   l o g h g o   l m���� 0 
duplicates   h m   m n����  f o      ���� 0 
duplicates  ��  ��   W s   t z i j i o   t w���� 0 phone_value   j l      k�� k n       l m l  ;   x y m o   w x���� 0 unique_phones  ��  ��  �� 0 
this_phone   H n   > A n o n 2   ? A��
�� 
az20 o o   > ?���� 0 this_person   F  p q p X   � � r�� s r I  � ��� t��
�� .coredelonull���     obj  t l  � � u�� u 6  � � v w v n   � � x y x 2  � ���
�� 
az20 y o   � ����� 0 this_person   w =  � � z { z 1   � ���
�� 
ID   { o   � ����� 0 phone_id  ��  ��  �� 0 phone_id   s o   � ����� 0 duplicate_phones   q  |�� | Z   � � } ~���� } >  � �  �  o   � ����� 0 duplicate_phones   � J   � �����   ~ r   � � � � � [   � � � � � o   � ����� 0 people_with_duplicates   � m   � �����  � o      ���� 0 people_with_duplicates  ��  ��  ��  �� 0 this_person   ; l  ! % ��� � e   ! % � � 1   ! %��
�� 
az48��   9  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  Removed     � o   � ����� 0 
duplicates   � m   � � � �   duplicates from     � o   � ����� 0 people_with_duplicates   � m   � � � �  	 records.    � �� ���
�� 
btns � J   � � � �  ��� � m   � � � �  OK   ��  ��  ��   . m     � ��null        ��  <Address Book.app '7ܘ���h  ��fP�7 8����ؘ7ܘ�~ �����"ؘl�adrb   alis    d  Macintosh HD               �1Z�H+    <Address Book.app                                                �[�4        ����  	                Applications    �1�<      �\X�      <  *Macintosh HD:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    M a c i n t o s h   H D  Applications/Address Book.app   / ��  ��   +  � � � l     ������  ��   �  ��� � i      � � � I      �� ����� 0 numbersonly numbersOnly �  ��� � o      ���� 0 pstring pString��  ��   � k     = � �  � � � r      � � � m      � �       � o      ���� 0 	trtnvalue 	tRtnValue �  � � � r    	 � � � n     � � � 1    ��
�� 
ID   � o    ���� 0 pstring pString � o      ���� 0 tlist tList �  � � � X   
 : ��� � � Z    5 � ����� � F    % � � � l    ��� � ?     � � � o    ���� 0 tchar tChar � m    ���� /��   � l    # ��� � A     # � � � o     !���� 0 tchar tChar � m   ! "���� :��   � r   ( 1 � � � b   ( / � � � o   ( )���� 0 	trtnvalue 	tRtnValue � l  ) . ��� � 5   ) .�� ���
�� 
TEXT � o   + ,���� 0 tchar tChar
�� kfrmID  ��   � o      ���� 0 	trtnvalue 	tRtnValue��  ��  �� 0 tchar tChar � o    ���� 0 tlist tList �  ��� � L   ; = � � o   ; <���� 0 	trtnvalue 	tRtnValue��  ��       �� � � ���   � ������ 0 numbersonly numbersOnly
�� .aevtoappnull  �   � **** � �� ����� � ����� 0 numbersonly numbersOnly�� �� ���  �  ���� 0 pstring pString��   � ���������� 0 pstring pString�� 0 	trtnvalue 	tRtnValue�� 0 tlist tList�� 0 tchar tChar � 
 �����������~�}�|�{
�� 
ID  
�� 
kocl
�� 
cobj
�� .corecnte****       ****� /�~ :
�} 
bool
�| 
TEXT
�{ kfrmID  �� >�E�O��,E�O /�[��l kh ��	 ���& �*��0%E�Y h[OY��O� � �z ��y�x � ��w
�z .aevtoappnull  �   � **** � k     � � �   � �  # � �  *�v�v  �y  �x   � �u�t�s�u 0 this_person  �t 0 
this_phone  �s 0 phone_id   �  �r  �q ' ��p�o�n�m�l�k�j�i�h�g�f�e�d ��c � � ��b �
�r 
ret 
�q .sysodlogaskr        TEXT�p 0 
duplicates  �o 0 people_with_duplicates  
�n 
az48
�m 
kocl
�l 
cobj
�k .corecnte****       ****�j 0 unique_phones  �i 0 duplicate_phones  
�h 
az20
�g 
az17�f 0 numbersonly numbersOnly�e 0 phone_value  
�d 
ID   �  
�c .coredelonull���     obj 
�b 
btns�w ���%�%�%j O�j O� �jE�OjE�O �*�,E[��l kh  jvE�OjvE�O C��-[��l kh )��,k+ E` O�_  ͡a ,%E�O�kE�Y _ �6G[OY��O (�[��l kh ��-a [a ,\Z�81j [OY��O�jv 
�kE�Y h[OY�qOa �%a %�%a %a a kvl Uascr  ��ޭ