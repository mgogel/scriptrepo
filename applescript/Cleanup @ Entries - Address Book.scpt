FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Cleanup @ Entries
 
By Adam Merrifield <http://seydoggy.com>
 
This script will cause irreversible changes
to contacts in your Address Book.
 
USE AT YOUR OWN RISK!!
 
This script looks for entries in the Address Book that do not have proper first or last names and instead use an email address as one or the other. I personaly have no use for a contact with no name but this might be the case with you. This will likely wipe out a big chunk of your contacts, so I repeat, USE AT YOUR OWN RISK!!
 
- r1 12-23-09 13:31
     � 	 	 
 C l e a n u p   @   E n t r i e s 
   
 B y   A d a m   M e r r i f i e l d   < h t t p : / / s e y d o g g y . c o m > 
   
 T h i s   s c r i p t   w i l l   c a u s e   i r r e v e r s i b l e   c h a n g e s 
 t o   c o n t a c t s   i n   y o u r   A d d r e s s   B o o k . 
   
 U S E   A T   Y O U R   O W N   R I S K ! ! 
   
 T h i s   s c r i p t   l o o k s   f o r   e n t r i e s   i n   t h e   A d d r e s s   B o o k   t h a t   d o   n o t   h a v e   p r o p e r   f i r s t   o r   l a s t   n a m e s   a n d   i n s t e a d   u s e   a n   e m a i l   a d d r e s s   a s   o n e   o r   t h e   o t h e r .   I   p e r s o n a l y   h a v e   n o   u s e   f o r   a   c o n t a c t   w i t h   n o   n a m e   b u t   t h i s   m i g h t   b e   t h e   c a s e   w i t h   y o u .   T h i s   w i l l   l i k e l y   w i p e   o u t   a   b i g   c h u n k   o f   y o u r   c o n t a c t s ,   s o   I   r e p e a t ,   U S E   A T   Y O U R   O W N   R I S K ! ! 
   
 -   r 1   1 2 - 2 3 - 0 9   1 3 : 3 1 
   
�� 
 l   � ����  O    �    k   �       I   	������
�� .miscactvnull��� ��� null��  ��        r   
 ,    l  
 * ����  6  
 *    2   
 ��
�� 
azf4  G    )    G         E        1    ��
�� 
azf7  m       �    @  E       !   1    ��
�� 
azf8 ! m     " " � # #  @  E   ! ( $ % $ 1   " $��
�� 
az40 % m   % ' & & � ' '  @��  ��    o      ���� 0 	thepeople 	thePeople   (�� ( Y   -� )�� * +�� ) k   ;� , ,  - . - r   ; A / 0 / l  ; ? 1���� 1 n   ; ? 2 3 2 4   < ?�� 4
�� 
cobj 4 o   = >���� 0 i   3 o   ; <���� 0 	thepeople 	thePeople��  ��   0 o      ���� 0 	theperson 	thePerson .  5 6 5 r   B L 7 8 7 l  B J 9���� 9 c   B J : ; : n   B H < = < 1   F H��
�� 
azf7 = l  B F >���� > n   B F ? @ ? 4   C F�� A
�� 
cobj A o   D E���� 0 i   @ o   B C���� 0 	thepeople 	thePeople��  ��   ; m   H I��
�� 
TEXT��  ��   8 o      ���� 0 	firstname 	firstName 6  B C B r   M Y D E D l  M U F���� F c   M U G H G n   M S I J I 1   Q S��
�� 
azf8 J l  M Q K���� K n   M Q L M L 4   N Q�� N
�� 
cobj N o   O P���� 0 i   M o   M N���� 0 	thepeople 	thePeople��  ��   H m   S T��
�� 
TEXT��  ��   E o      ���� 0 lastname lastName C  O P O r   Z f Q R Q l  Z b S���� S c   Z b T U T n   Z ` V W V 1   ^ `��
�� 
az40 W l  Z ^ X���� X n   Z ^ Y Z Y 4   [ ^�� [
�� 
cobj [ o   \ ]���� 0 i   Z o   Z [���� 0 	thepeople 	thePeople��  ��   U m   ` a��
�� 
TEXT��  ��   R o      ���� 0 
middlename 
middleName P  \ ] \ r   g y ^ _ ^ l  g u `���� ` c   g u a b a n   g s c d c 1   o s��
�� 
az17 d n   g o e f e m   k o��
�� 
az21 f l  g k g���� g n   g k h i h 4   h k�� j
�� 
cobj j o   i j���� 0 i   i o   g h���� 0 	thepeople 	thePeople��  ��   b m   s t��
�� 
TEXT��  ��   _ o      ���� 0 theiremails theirEmails ]  k l k r   z � m n m J   z � o o  p q p m   z } r r � s s  c o m q  t u t m   } � v v � w w  n e t u  x y x m   � � z z � { {  c a y  | } | m   � � ~ ~ �    o r g }  � � � m   � � � � � � �  u k �  � � � m   � � � � � � �  u s �  � � � m   � � � � � � �  f r �  � � � m   � � � � � � �  i t �  � � � m   � � � � � � �  e d u �  � � � m   � � � � � � �  . c o m �  � � � m   � � � � � � �  . n e t �  � � � m   � � � � � � �  . c a �  � � � m   � � � � � � �  . o r g �  � � � m   � � � � � � �  . u k �  � � � m   � � � � � � �  . u s �  � � � m   � � � � � � �  . f r �  � � � m   � � � � � � �  . i t �  ��� � m   � � � � � � �  . e d u��   n o      ���� 0 urllist urlList l  � � � l  � ���������  ��  ��   �  � � � Z   �� � � � � � G   � � � � � =  � � � � � n   � � � � � 1   � ���
�� 
azf7 � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 	thepeople 	thePeople��  ��   � m   � ���
�� 
msng � =  � � � � � n   � � � � � 1   � ���
�� 
azf8 � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 	thepeople 	thePeople��  ��   � m   � ���
�� 
msng � I  � ��� ���
�� .coredelonull���     obj  � o   � ����� 0 	theperson 	thePerson��   �  � � � F   � � � � � E   � � � � � o   � ����� 0 	firstname 	firstName � m   � � � � � � �  @ � E   � � � � � o   � ����� 0 lastname lastName � m   � � � � � � �  @ �  � � � I  � ��� ���
�� .coredelonull���     obj  � o   � ����� 0 	theperson 	thePerson��   �  � � � E   � � � � o   � ���� 0 urllist urlList � o   ���� 0 lastname lastName �  ��� � I �� ���
�� .coredelonull���     obj  � o  ���� 0 	theperson 	thePerson��  ��   � k  � � �  � � � I X�� � �
�� .sysodlogaskr        TEXT � b  8 � � � b  4 � � � b  0 � � � b  , � � � b  ( � � � b  $ � � � b    � � � b   � � � b   � � � b   � � � m     �  f i r s t   n a m e :   � o  ���� 0 	firstname 	firstName � o  ��
�� 
ret  � m   �  m i d d l e   n a m e :   � o  ���� 0 
middlename 
middleName � o   #��
�� 
ret  � m  $' �  l a s t   n a m e :   � o  (+���� 0 lastname lastName � o  ,/��
�� 
ret  � o  03��
�� 
ret  � o  47���� 0 theiremails theirEmails � ��
�� 
btns J  ;F 	
	 m  ;> �  C a n c e l
  m  >A �  K E E P �� m  AD �  D E L E T E��   ��
�� 
dflt m  IL �  D E L E T E ����
�� 
givu m  OR���� ��   �  s  Yu c  Y` 1  Y\��
�� 
rslt m  \_��
�� 
list J        !  l     "����" o      ����  0 buttonreturned buttonReturned��  ��  ! #��# l     $����$ o      ���� 0 gaveup gaveUp��  ��  ��   %&% Z v�'(����' = v{)*) o  vy���� 0 gaveup gaveUp* m  yz��
�� boovtrue( R  ~�����+
�� .ascrerr ****      � ****��  + �,�~
� 
errn, m  ���}�}���~  ��  ��  & -.- Z ��/0�|�{/ = ��121 o  ���z�z  0 buttonreturned buttonReturned2 m  ��33 �44  C a n c e l e d0 R  ���y�x5
�y .ascrerr ****      � ****�x  5 �w6�v
�w 
errn6 m  ���u�u���v  �|  �{  . 7�t7 Z ��89�s�r8 = ��:;: o  ���q�q  0 buttonreturned buttonReturned; m  ��<< �==  D E L E T E9 I ���p>�o
�p .coredelonull���     obj > o  ���n�n 0 	theperson 	thePerson�o  �s  �r  �t   � ?�m? I ���l�k�j
�l .coresavenull���     null�k  �j  �m  �� 0 i   * m   0 1�i�i  + I  1 6�h@�g
�h .corecnte****       ****@ o   1 2�f�f 0 	thepeople 	thePeople�g  ��  ��    m     AA�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  ��       �eBC�e  B �d
�d .aevtoappnull  �   � ****C �cD�b�aEF�`
�c .aevtoappnull  �   � ****D k    �GG  
�_�_  �b  �a  E �^�^ 0 i  F EA�]�\H�[ �Z "�Y &�X�W�V�U�T�S�R�Q�P�O�N r v z ~ � � � � � � � � � � � � � ��M�L�K�J�I � � �H�G�F�E�D�C�B�A�@�?�>�=�<3<�;
�] .miscactvnull��� ��� null
�\ 
azf4H  
�[ 
azf7
�Z 
azf8
�Y 
az40�X 0 	thepeople 	thePeople
�W .corecnte****       ****
�V 
cobj�U 0 	theperson 	thePerson
�T 
TEXT�S 0 	firstname 	firstName�R 0 lastname lastName�Q 0 
middlename 
middleName
�P 
az21
�O 
az17�N 0 theiremails theirEmails�M �L 0 urllist urlList
�K 
msng
�J 
bool
�I .coredelonull���     obj 
�H 
ret 
�G 
btns
�F 
dflt
�E 
givu�D �C 
�B .sysodlogaskr        TEXT
�A 
rslt
�@ 
list�?  0 buttonreturned buttonReturned�> 0 gaveup gaveUp
�= 
errn�<��
�; .coresavenull���     null�`���*j O*�-�[[[�,\Z�@\[�,\Z�@B\[�,\Z�@B1E�O�k�j kh  ��/E�O��/�,�&E�O��/�,�&E` O��/�,�&E` O��/a ,a ,�&E` Oa a a a a a a a a a a a  a !a "a #a $a %a &a 'vE` (O��/�,a ) 
 ��/�,a ) a *& 
�j +Y ��a ,	 _ a -a *& 
�j +Y �_ (_  
�j +Y �a .�%_ /%a 0%_ %_ /%a 1%_ %_ /%_ /%_ %a 2a 3a 4a 5mva 6a 7a 8a 9a : ;O_ <a =&E[�k/EQ` >Z[�l/EQ` ?ZO_ ?e  )a @a AlhY hO_ >a B  )a @a AlhY hO_ >a C  
�j +Y hO*j D[OY�vU ascr  ��ޭ