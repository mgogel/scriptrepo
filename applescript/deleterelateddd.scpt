FasdUAS 1.101.10   ��   ��    k             l     ��  ��     SCRIPT 1a CORRECTED     � 	 	 & S C R I P T   1 a   C O R R E C T E D   
  
 l     ����  I     �������� 0 main  ��  ��  ��  ��        i         I      �������� 0 main  ��  ��    k            h     �� �� 0 o    k             j     �� �� 0 pp    J     ����        j    �� �� 0 rr    J    ����        l     ��������  ��  ��     ��  l    � ����  O     �   !   k    � " "  # $ # r     % & % e     ' ' 2    ��
�� 
azf4 & o      ���� 0 pp   $  ( ) ( X    � *�� + * k   ! � , ,  - . - l  ! & / 0 1 / r   ! & 2 3 2 n  ! $ 4 5 4 1   " $��
�� 
pcnt 5 o   ! "���� 0 p   3 o      ���� 0 p   0 . ( dereference the list item reference [1]    1 � 6 6 P   d e r e f e r e n c e   t h e   l i s t   i t e m   r e f e r e n c e   [ 1 ] .  7 8 7 O   ' � 9 : 9 k   + � ; ;  < = < l  + +��������  ��  ��   =  > ? > r   + 5 @ A @ e   + / B B n  + / C D C 2  , .��
�� 
az53 D  g   + , A o      ���� 0 rr   ?  E F E X   6 � G�� H G k   H � I I  J K J l  H M L M N L r   H M O P O n  H K Q R Q 1   I K��
�� 
pcnt R o   H I���� 0 r   P o      ���� 0 r   M . ( dereference the list item reference [1]    N � S S P   d e r e f e r e n c e   t h e   l i s t   i t e m   r e f e r e n c e   [ 1 ] K  T�� T Z   N � U V���� U F   N ] W X W =   N S Y Z Y n  N Q [ \ [ 1   O Q��
�� 
az18 \ o   N O���� 0 r   Z m   Q R ] ] � ^ ^ 
 G r o u p X =   V [ _ ` _ n  V Y a b a 1   W Y��
�� 
az17 b o   V W���� 0 r   ` m   Y Z c c � d d  B V k   ` � e e  f g f I  ` }���� h
�� .corecrel****      � null��   h �� i j
�� 
kocl i m   b c��
�� 
az70 j �� k l
�� 
insh k n   d h m n m  ;   g h n 2  d g��
�� 
az70 l �� o��
�� 
prdt o K   k w p p �� q r
�� 
az18 q m   l o s s � t t 
 G r o u p r �� u��
�� 
az17 u m   p s v v � w w  G r o u p B��  ��   g  x�� x I  ~ ��� y��
�� .coredelonull���     obj  y o   ~ ���� 0 r  ��  ��  ��  ��  ��  �� 0 r   H n  9 < z { z o   : <���� 0 rr   {  f   9 : F  | } | l  � ���������  ��  ��   }  ~  ~ l   � ��� � ���   �[U -- alternative to the above [2]
 set rr to get id of its related names
 repeat with r in my rr
 set r to its related name id (r's contents) -- dereference the list item reference [1]
 if r's label = "Group" and r's value = "B" then
 make new url at end of urls with properties {label:"Group", value:"GroupB"}
 delete r
 end if
 end repeat
     � � � ��   - -   a l t e r n a t i v e   t o   t h e   a b o v e   [ 2 ] 
   s e t   r r   t o   g e t   i d   o f   i t s   r e l a t e d   n a m e s 
   r e p e a t   w i t h   r   i n   m y   r r 
   s e t   r   t o   i t s   r e l a t e d   n a m e   i d   ( r ' s   c o n t e n t s )   - -   d e r e f e r e n c e   t h e   l i s t   i t e m   r e f e r e n c e   [ 1 ] 
   i f   r ' s   l a b e l   =   " G r o u p "   a n d   r ' s   v a l u e   =   " B "   t h e n 
   m a k e   n e w   u r l   a t   e n d   o f   u r l s   w i t h   p r o p e r t i e s   { l a b e l : " G r o u p " ,   v a l u e : " G r o u p B " } 
   d e l e t e   r 
   e n d   i f 
   e n d   r e p e a t 
     ��� � l  � ���������  ��  ��  ��   : o   ' (���� 0 p   8  ��� � l  � ��� � ���   �  save addressbook    � � � �   s a v e   a d d r e s s b o o k��  �� 0 p   + n    � � � o    ���� 0 pp   �  f     )  ��� � I  � �������
�� .coresavenull���     null��  ��  ��   ! m      � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  ��     ��� � O    � � � I   ������
�� .aevtoappnull  �   � ****��  ��   � o    	���� 0 o  ��     � � � l      �� � ���   ��z
 [1] Dereferencing the list item reference is costly operation in AppleScript. 
 So dereference it once (especially if it is used more than once in the iteration).
 [2] Use 'by ID' reference form if the 'delete r' does not work properly.
 (E.g., if r is in 'by index' reference form and there're multiple related names, 
 'delete r' won't work properly due to changing index.)
    � � � �� 
   [ 1 ]   D e r e f e r e n c i n g   t h e   l i s t   i t e m   r e f e r e n c e   i s   c o s t l y   o p e r a t i o n   i n   A p p l e S c r i p t .   
   S o   d e r e f e r e n c e   i t   o n c e   ( e s p e c i a l l y   i f   i t   i s   u s e d   m o r e   t h a n   o n c e   i n   t h e   i t e r a t i o n ) . 
   [ 2 ]   U s e   ' b y   I D '   r e f e r e n c e   f o r m   i f   t h e   ' d e l e t e   r '   d o e s   n o t   w o r k   p r o p e r l y . 
   ( E . g . ,   i f   r   i s   i n   ' b y   i n d e x '   r e f e r e n c e   f o r m   a n d   t h e r e ' r e   m u l t i p l e   r e l a t e d   n a m e s ,   
   ' d e l e t e   r '   w o n ' t   w o r k   p r o p e r l y   d u e   t o   c h a n g i n g   i n d e x . ) 
 �  ��� � l     �� � ���   �   END OF SCRIPT 1a CORRECTED    � � � � 4 E N D   O F   S C R I P T   1 a   C O R R E C T E D��       �� � � ���   � ������ 0 main  
�� .aevtoappnull  �   � **** � �� ���� � ����� 0 main  ��  ��   � ���� 0 o   � ��  ����� 0 o   � �� ����� � ���
�� .ascrinit****      � **** � k      � �   � �   � �  ��� � i     � � � I      ������
�� .aevtoappnull  �   � ****��  ��   � k     � � �  ����  ��  ��  ��   � �������� 0 pp  �� 0 rr  
�� .aevtoappnull  �   � **** � ���� ��� 0 pp  �� 0 rr   � �� ����� � ���
�� .aevtoappnull  �   � ****��  ��   � ������ 0 p  �� 0 r   �  ������������������� ]�� c�������� s v����~�}�|
�� 
azf4�� 0 pp  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt
�� 
az53�� 0 rr  
�� 
az18
�� 
az17
�� 
bool
�� 
az70
�� 
insh
�� 
prdt�� � 
�~ .corecrel****      � null
�} .coredelonull���     obj 
�| .coresavenull���     null�� �� �*�-EEc   O �)�,[��l kh  ��,E�O� e*�-EEc  O U)�,[��l kh ��,E�O��,� 	 	��,� �& (*���*�-6a �a �a a a  O�j Y h[OY��OPUOP[OY��O*j U�� jv�Ojv�OL 
�� .aevtoappnull  �   � ****�� ��K S�O� *j U � �{ ��z�y � ��x
�{ .aevtoappnull  �   � **** � k      � �  
�w�w  �z  �y   �   � �v�v 0 main  �x *j+  ascr  ��ޭ