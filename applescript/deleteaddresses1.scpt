FasdUAS 1.101.10   ��   ��    k             l     ��  ��      neat-contacts     � 	 	    n e a t - c o n t a c t s   
  
 l     ��  ��    "  Apple Contacts cleanup tool     �   8   A p p l e   C o n t a c t s   c l e a n u p   t o o l      l     ��������  ��  ��        l     ��  ��    9 3 If you've ever synced your Contacts with Facebook,     �   f   I f   y o u ' v e   e v e r   s y n c e d   y o u r   C o n t a c t s   w i t h   F a c e b o o k ,      l     ��  ��    8 2 there's a chance that you got a really screwed up     �   d   t h e r e ' s   a   c h a n c e   t h a t   y o u   g o t   a   r e a l l y   s c r e w e d   u p      l     ��  ��    5 / Contacts as a result. This will help you clean     �   ^   C o n t a c t s   a s   a   r e s u l t .   T h i s   w i l l   h e l p   y o u   c l e a n     !   l     �� " #��   "   up your Contacts.    # � $ $ $   u p   y o u r   C o n t a c t s . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   Three tools:    * � + +    T h r e e   t o o l s : (  , - , l     �� . /��   . R L 1) Delete all birthdays (so they don't pop up in Mac/iPhone and stay there)    / � 0 0 �   1 )   D e l e t e   a l l   b i r t h d a y s   ( s o   t h e y   d o n ' t   p o p   u p   i n   M a c / i P h o n e   a n d   s t a y   t h e r e ) -  1 2 1 l     �� 3 4��   3 $  2) Delete all Facebook fields    4 � 5 5 <   2 )   D e l e t e   a l l   F a c e b o o k   f i e l d s 2  6 7 6 l     �� 8 9��   8 A ; 3) Delete all Homepages for people that start with "fb://"    9 � : : v   3 )   D e l e t e   a l l   H o m e p a g e s   f o r   p e o p l e   t h a t   s t a r t   w i t h   " f b : / / " 7  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ?   How to use it:    @ � A A    H o w   t o   u s e   i t : >  B C B l     �� D E��   D C = 1) BACKUP YOUR CONTACTS! File > Export > Contacts Archive...    E � F F z   1 )   B A C K U P   Y O U R   C O N T A C T S !   F i l e   >   E x p o r t   >   C o n t a c t s   A r c h i v e . . . C  G H G l     �� I J��   I B < 2) Figure out for which people you want to make the change.    J � K K x   2 )   F i g u r e   o u t   f o r   w h i c h   p e o p l e   y o u   w a n t   t o   m a k e   t h e   c h a n g e . H  L M L l     �� N O��   N B <    You can leave it as it is to change everyone, or you can    O � P P x         Y o u   c a n   l e a v e   i t   a s   i t   i s   t o   c h a n g e   e v e r y o n e ,   o r   y o u   c a n M  Q R Q l     �� S T��   S A ;    do it for a specific person (maybe to just try it out).    T � U U v         d o   i t   f o r   a   s p e c i f i c   p e r s o n   ( m a y b e   t o   j u s t   t r y   i t   o u t ) . R  V W V l     �� X Y��   X 6 0 3) Decide which of these tools you want to use.    Y � Z Z `   3 )   D e c i d e   w h i c h   o f   t h e s e   t o o l s   y o u   w a n t   t o   u s e . W  [ \ [ l     �� ] ^��   ] G A 4) For the tools that you don't want to use, simply delete them.    ^ � _ _ �   4 )   F o r   t h e   t o o l s   t h a t   y o u   d o n ' t   w a n t   t o   u s e ,   s i m p l y   d e l e t e   t h e m . \  ` a ` l     �� b c��   b   5) Run the script.    c � d d &   5 )   R u n   t h e   s c r i p t . a  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i  	 Credits:    j � k k    C r e d i t s : h  l m l l     �� n o��   n * $ Facebook field deleter adapted from    o � p p H   F a c e b o o k   f i e l d   d e l e t e r   a d a p t e d   f r o m m  q r q l     �� s t��   s 8 2 http://macscripter.net/viewtopic.php?id=38956&p=2    t � u u d   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 3 8 9 5 6 & p = 2 r  v w v l     ��������  ��  ��   w  x�� x l    ? y���� y O     ? z { z k    > | |  } ~ } l   ��  ���      Define the changeset:    � � � � ,   D e f i n e   t h e   c h a n g e s e t : ~  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � #  We can either do all people:    � � � � :   W e   c a n   e i t h e r   d o   a l l   p e o p l e : �  � � � r    	 � � � 2   ��
�� 
azf4 � o      ����  0 peopletochange peopleToChange �  � � � l  
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
 > ��� � � k    9 � �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ; 5 START EDITING WHAT YOU WANT THE SCRIPT TO DO HERE --    � � � � j   S T A R T   E D I T I N G   W H A T   Y O U   W A N T   T H E   S C R I P T   T O   D O   H E R E   - - �  � � � l   �� � ���   � &   Delete the tools you don't want    � � � � @   D e l e t e   t h e   t o o l s   y o u   d o n ' t   w a n t �  � � � l   �� � ���   �   There are three tools:    � � � � .   T h e r e   a r e   t h r e e   t o o l s : �  � � � l   �� � ���   �       � � � �    �  � � � l   �� � ���   �   1) Delete birthdays    � � � � (   1 )   D e l e t e   b i r t h d a y s �  � � � l   �� � ���   � ' ! 2) Delete Facebook contact field    � � � � B   2 )   D e l e t e   F a c e b o o k   c o n t a c t   f i e l d �  � � � l   �� � ���   � < 6 3) Delete home pages for people that start with fb://    � � � � l   3 )   D e l e t e   h o m e   p a g e s   f o r   p e o p l e   t h a t   s t a r t   w i t h   f b : / / �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 2 , START -- 1) Delete birthday for each person    � � � � X   S T A R T   - -   1 )   D e l e t e   b i r t h d a y   f o r   e a c h   p e r s o n �  � � � l   ��������  ��  ��   �  � � � I   !�� ���
�� .coredelonull���     obj  � n     � � � o    ���� 0 socialprofile   � o    ���� 0 
thisperson 
thisPerson��   �  � � � l  " "��������  ��  ��   �  � � � l  " "��������  ��  ��   �  � � � l  " "��������  ��  ��   �  � � � I  " 1�� ���
�� .ascrcmnt****      � **** � b   " - � � � b   " ) � � � b   " ' � � � m   " # � � � � � 
 O K   -   � l  # & ����� � n   # & � � � 1   $ &��
�� 
azf7 � o   # $���� 0 
thisperson 
thisPerson��  ��   � m   ' ( � � � � �    � l  ) , ����� � n   ) , � � � 1   * ,��
�� 
azf8 � o   ) *���� 0 
thisperson 
thisPerson��  ��  ��   �  � � � l  2 2��������  ��  ��   �  � � � I  2 7������
�� .coresavenull���     null��  ��   �  ��� � l  8 8��������  ��  ��  ��  �� 0 
thisperson 
thisPerson � o    ����  0 peopletochange peopleToChange��   { m      � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ������
�� .aevtoappnull  �   � ****  k     ?  x����  ��  ��   �� 0 
thisperson 
thisPerson  ��~�}�|�{�z�y�x ��w ��v�u�t
�~ 
azf4�}  0 peopletochange peopleToChange
�| 
kocl
�{ 
cobj
�z .corecnte****       ****�y 0 socialprofile  
�x .coredelonull���     obj 
�w 
azf7
�v 
azf8
�u .ascrcmnt****      � ****
�t .coresavenull���     null�� @� <*�-E�O 3�[��l kh  ��,j O��,%�%��,%j O*j OP[OY��U ascr  ��ޭ