FasdUAS 1.101.10   ��   ��    k             l     ��  ��      neat-contacts     � 	 	    n e a t - c o n t a c t s   
  
 l     ��  ��    "  Apple Contacts cleanup tool     �   8   A p p l e   C o n t a c t s   c l e a n u p   t o o l      l     ��������  ��  ��        l     ��  ��    9 3 If you've ever synced your Contacts with Facebook,     �   f   I f   y o u ' v e   e v e r   s y n c e d   y o u r   C o n t a c t s   w i t h   F a c e b o o k ,      l     ��  ��    8 2 there's a chance that you got a really screwed up     �   d   t h e r e ' s   a   c h a n c e   t h a t   y o u   g o t   a   r e a l l y   s c r e w e d   u p      l     ��  ��    5 / Contacts as a result. This will help you clean     �   ^   C o n t a c t s   a s   a   r e s u l t .   T h i s   w i l l   h e l p   y o u   c l e a n     !   l     �� " #��   "   up your Contacts.    # � $ $ $   u p   y o u r   C o n t a c t s . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   Three tools:    * � + +    T h r e e   t o o l s : (  , - , l     �� . /��   . R L 1) Delete all birthdays (so they don't pop up in Mac/iPhone and stay there)    / � 0 0 �   1 )   D e l e t e   a l l   b i r t h d a y s   ( s o   t h e y   d o n ' t   p o p   u p   i n   M a c / i P h o n e   a n d   s t a y   t h e r e ) -  1 2 1 l     �� 3 4��   3 $  2) Delete all Facebook fields    4 � 5 5 <   2 )   D e l e t e   a l l   F a c e b o o k   f i e l d s 2  6 7 6 l     �� 8 9��   8 A ; 3) Delete all Homepages for people that start with "fb://"    9 � : : v   3 )   D e l e t e   a l l   H o m e p a g e s   f o r   p e o p l e   t h a t   s t a r t   w i t h   " f b : / / " 7  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ?   How to use it:    @ � A A    H o w   t o   u s e   i t : >  B C B l     �� D E��   D C = 1) BACKUP YOUR CONTACTS! File > Export > Contacts Archive...    E � F F z   1 )   B A C K U P   Y O U R   C O N T A C T S !   F i l e   >   E x p o r t   >   C o n t a c t s   A r c h i v e . . . C  G H G l     �� I J��   I B < 2) Figure out for which people you want to make the change.    J � K K x   2 )   F i g u r e   o u t   f o r   w h i c h   p e o p l e   y o u   w a n t   t o   m a k e   t h e   c h a n g e . H  L M L l     �� N O��   N B <    You can leave it as it is to change everyone, or you can    O � P P x         Y o u   c a n   l e a v e   i t   a s   i t   i s   t o   c h a n g e   e v e r y o n e ,   o r   y o u   c a n M  Q R Q l     �� S T��   S A ;    do it for a specific person (maybe to just try it out).    T � U U v         d o   i t   f o r   a   s p e c i f i c   p e r s o n   ( m a y b e   t o   j u s t   t r y   i t   o u t ) . R  V W V l     �� X Y��   X 6 0 3) Decide which of these tools you want to use.    Y � Z Z `   3 )   D e c i d e   w h i c h   o f   t h e s e   t o o l s   y o u   w a n t   t o   u s e . W  [ \ [ l     �� ] ^��   ] G A 4) For the tools that you don't want to use, simply delete them.    ^ � _ _ �   4 )   F o r   t h e   t o o l s   t h a t   y o u   d o n ' t   w a n t   t o   u s e ,   s i m p l y   d e l e t e   t h e m . \  ` a ` l     �� b c��   b   5) Run the script.    c � d d &   5 )   R u n   t h e   s c r i p t . a  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i  	 Credits:    j � k k    C r e d i t s : h  l m l l     �� n o��   n * $ Facebook field deleter adapted from    o � p p H   F a c e b o o k   f i e l d   d e l e t e r   a d a p t e d   f r o m m  q r q l     �� s t��   s 8 2 http://macscripter.net/viewtopic.php?id=38956&p=2    t � u u d   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 3 8 9 5 6 & p = 2 r  v w v l     ��������  ��  ��   w  x�� x l    � y���� y O     � z { z k    � | |  } ~ } l   ��  ���      Define the changeset:    � � � � ,   D e f i n e   t h e   c h a n g e s e t : ~  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � #  We can either do all people:    � � � � :   W e   c a n   e i t h e r   d o   a l l   p e o p l e : �  � � � l   �� � ���   � #  set peopleToChange to people    � � � � :   s e t   p e o p l e T o C h a n g e   t o   p e o p l e �  � � � r    	 � � � 1    ��
�� 
az48 � o      ����  0 peopletochange peopleToChange �  � � � l  
 
��������  ��  ��   �  � � � l  
 
�� � ���   � 8 2 Only do a specific person (uncomment this below):    � � � � d   O n l y   d o   a   s p e c i f i c   p e r s o n   ( u n c o m m e n t   t h i s   b e l o w ) : �  � � � l  
 
�� � ���   � g a set peopleToChange to people whose (first name) contains "John" and (last name) contains "Smith"    � � � � �   s e t   p e o p l e T o C h a n g e   t o   p e o p l e   w h o s e   ( f i r s t   n a m e )   c o n t a i n s   " J o h n "   a n d   ( l a s t   n a m e )   c o n t a i n s   " S m i t h " �  � � � l  
 
��������  ��  ��   �  � � � l  
 
�� � ���   � !  For all people that match:    � � � � 6   F o r   a l l   p e o p l e   t h a t   m a t c h : �  ��� � X   
 � ��� � � k    � � �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ; 5 START EDITING WHAT YOU WANT THE SCRIPT TO DO HERE --    � � � � j   S T A R T   E D I T I N G   W H A T   Y O U   W A N T   T H E   S C R I P T   T O   D O   H E R E   - - �  � � � l   �� � ���   � &   Delete the tools you don't want    � � � � @   D e l e t e   t h e   t o o l s   y o u   d o n ' t   w a n t �  � � � l   �� � ���   �   There are three tools:    � � � � .   T h e r e   a r e   t h r e e   t o o l s : �  � � � l   �� � ���   �       � � � �    �  � � � l   �� � ���   �   1) Delete birthdays    � � � � (   1 )   D e l e t e   b i r t h d a y s �  � � � l   �� � ���   � ' ! 2) Delete Facebook contact field    � � � � B   2 )   D e l e t e   F a c e b o o k   c o n t a c t   f i e l d �  � � � l   �� � ���   � < 6 3) Delete home pages for people that start with fb://    � � � � l   3 )   D e l e t e   h o m e   p a g e s   f o r   p e o p l e   t h a t   s t a r t   w i t h   f b : / / �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 2 , START -- 1) Delete birthday for each person    � � � � X   S T A R T   - -   1 )   D e l e t e   b i r t h d a y   f o r   e a c h   p e r s o n �  � � � l   ��������  ��  ��   �  � � � I   !�� ���
�� .coredelonull���     obj  � n     � � � 1    ��
�� 
az11 � o    ���� 0 
thisperson 
thisPerson��   �  � � � l  " "��������  ��  ��   �  � � � l  " "�� � ���   � 0 * END -- 1) Delete birthday for each person    � � � � T   E N D   - -   1 )   D e l e t e   b i r t h d a y   f o r   e a c h   p e r s o n �  � � � l  " "��������  ��  ��   �  � � � l  " "��������  ��  ��   �  � � � l  " "��������  ��  ��   �  � � � l  " "�� � ���   � = 7 START -- Delete Facebook contact field for each person    � � � � n   S T A R T   - -   D e l e t e   F a c e b o o k   c o n t a c t   f i e l d   f o r   e a c h   p e r s o n �  � � � l  " "��������  ��  ��   �  � � � r   " 0 � � � l  " . ����� � 6  " . � � � n   " % �  � 2   # %��
�� 
sp01  o   " #���� 0 
thisperson 
thisPerson � E   & - 1   ' )��
�� 
az81 m   * , �  F a c e b o o k��  ��   � o      ���� &0 socialprofilelist SocialProfileList �  Z   1 c���� >   1 5	
	 o   1 2���� &0 socialprofilelist SocialProfileList
 J   2 4����   k   8 _  I  8 A����
�� .coredelonull���     obj  l  8 =���� n   8 = m   ; =��
�� 
az70 n   8 ; 2   9 ;��
�� 
sp01 o   8 9���� 0 
thisperson 
thisPerson��  ��  ��    I  B K����
�� .coredelonull���     obj  l  B G��~ n   B G 1   E G�}
�} 
az83 n   B E m   C E�|
�| 
sp01 o   B C�{�{ 0 
thisperson 
thisPerson�  �~  ��    l  L L�z�y�x�z  �y  �x    l  L L�w !�w    5 / We have to repeat this again because sometimes   ! �"" ^   W e   h a v e   t o   r e p e a t   t h i s   a g a i n   b e c a u s e   s o m e t i m e s #$# l  L L�v%&�v  % 1 + Applescript converts a username into a URL   & �'' V   A p p l e s c r i p t   c o n v e r t s   a   u s e r n a m e   i n t o   a   U R L$ ()( l  L L�u*+�u  * "  And doesn't fully delete it   + �,, 8   A n d   d o e s n ' t   f u l l y   d e l e t e   i t) -.- I  L U�t/�s
�t .coredelonull���     obj / l  L Q0�r�q0 n   L Q121 m   O Q�p
�p 
az702 n   L O343 2   M O�o
�o 
sp014 o   L M�n�n 0 
thisperson 
thisPerson�r  �q  �s  . 5�m5 I  V _�l6�k
�l .coredelonull���     obj 6 l  V [7�j�i7 n   V [898 1   Y [�h
�h 
az839 n   V Y:;: m   W Y�g
�g 
sp01; o   V W�f�f 0 
thisperson 
thisPerson�j  �i  �k  �m  ��  ��   <=< l  d d�e�d�c�e  �d  �c  = >?> l  d d�b@A�b  @ ; 5 END -- Delete Facebook contact field for each person   A �BB j   E N D   - -   D e l e t e   F a c e b o o k   c o n t a c t   f i e l d   f o r   e a c h   p e r s o n? CDC l  d d�a�`�_�a  �`  �_  D EFE l  d d�^�]�\�^  �]  �\  F GHG l  d d�[�Z�Y�[  �Z  �Y  H IJI l  d d�XKL�X  K E ? START -- Delete "home pages" that look like fb://profile/12345   L �MM ~   S T A R T   - -   D e l e t e   " h o m e   p a g e s "   t h a t   l o o k   l i k e   f b : / / p r o f i l e / 1 2 3 4 5J NON l  d d�W�V�U�W  �V  �U  O PQP r   d vRSR l  d rT�T�ST 6  d rUVU n   d gWXW 2   e g�R
�R 
az70X o   d e�Q�Q 0 
thisperson 
thisPersonV E   h qYZY 1   i k�P
�P 
az17Z m   l p[[ �\\ 
 f b : / /�T  �S  S o      �O�O 0 homepagelist homePageListQ ]^] Z   w �_`�N�M_ >   w {aba o   w x�L�L &0 socialprofilelist SocialProfileListb J   x z�K�K  ` I  ~ ��Jc�I
�J .coredelonull���     obj c l  ~ �d�H�Gd 6  ~ �efe n   ~ �ghg 2    ��F
�F 
az70h o   ~ �E�E 0 
thisperson 
thisPersonf E   � �iji 1   � ��D
�D 
az17j m   � �kk �ll 
 f b : / /�H  �G  �I  �N  �M  ^ mnm l  � ��C�B�A�C  �B  �A  n opo l  � ��@�?�>�@  �?  �>  p qrq l  � ��=st�=  s C = END -- Delete "home pages" that look like fb://profile/12345   t �uu z   E N D   - -   D e l e t e   " h o m e   p a g e s "   t h a t   l o o k   l i k e   f b : / / p r o f i l e / 1 2 3 4 5r vwv l  � ��<�;�:�<  �;  �:  w xyx l  � ��9�8�7�9  �8  �7  y z{z I  � ��6|�5
�6 .ascrcmnt****      � ****| b   � �}~} b   � �� b   � ���� m   � ��� ��� 
 O K   -  � l  � ���4�3� n   � ���� 1   � ��2
�2 
azf7� o   � ��1�1 0 
thisperson 
thisPerson�4  �3  � m   � ��� ���   ~ l  � ���0�/� n   � ���� 1   � ��.
�. 
azf8� o   � ��-�- 0 
thisperson 
thisPerson�0  �/  �5  { ��� l  � ��,�+�*�,  �+  �*  � ��� I  � ��)�(�'
�) .coresavenull���     null�(  �'  � ��&� l  � ��%�$�#�%  �$  �#  �&  �� 0 
thisperson 
thisPerson � o    �"�"  0 peopletochange peopleToChange��   { m     ���                                                                                  adrb  alis    V  Macintosh HD               ӂTGH+   x�RContacts.app                                                    x��Ә{[        ����  	                Applications    ӂ��      Ә��     x�R  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  ��       �!���!  � � 
�  .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k     ���  x��  �  �  � �� 0 
thisperson 
thisPerson� ���������������[�k����
�	�
� 
az48�  0 peopletochange peopleToChange
� 
kocl
� 
cobj
� .corecnte****       ****
� 
az11
� .coredelonull���     obj 
� 
sp01�  
� 
az81� &0 socialprofilelist SocialProfileList
� 
az70
� 
az83
� 
az17� 0 homepagelist homePageList
� 
azf7
�
 
azf8
�	 .ascrcmnt****      � ****
� .coresavenull���     null� �� �*�,E�O ��[��l kh  ��,j O��-�[�,\Z�@1E�O�jv ,��-�,j O��,�,j O��-�,j O��,�,j Y hO��-�[�,\Za @1E` O�jv ��-�[�,\Za @1j Y hOa �a ,%a %�a ,%j O*j OP[OY�`Uascr  ��ޭ