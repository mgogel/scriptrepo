FasdUAS 1.101.10   ��   ��    l    � ����  O     �    k    �     	  l   ��������  ��  ��   	  
  
 l    ��  ��    " get the names of all groups      �   8 g e t   t h e   n a m e s   o f   a l l   g r o u p s        r        n    	    1    	��
�� 
pnam  2   ��
�� 
azf5  o      ���� 0 thegroupnames theGroupNames      l   ��������  ��  ��        l    ��  ��    7 1choose you current group, the one to keep entries     �   b c h o o s e   y o u   c u r r e n t   g r o u p ,   t h e   o n e   t o   k e e p   e n t r i e s      r        I   ��   !
�� .gtqpchltns    @   @ ns     o    ���� 0 thegroupnames theGroupNames ! �� " #
�� 
prmp " m     $ $ � % % ( C h o o s e   C u r r e n t   G r o u p # �� & '
�� 
inSL & m     ( ( � ) )  W o r k   -   C u r r e n t ' �� *��
�� 
mlsl * m    ��
�� boovfals��    o      ���� ,0 text_returnedcurrent text_returnedCurrent   + , + l   ��������  ��  ��   ,  - . - l    �� / 0��   / 9 3choose you pending group, the one to remove entries    0 � 1 1 f c h o o s e   y o u   p e n d i n g   g r o u p ,   t h e   o n e   t o   r e m o v e   e n t r i e s .  2 3 2 r    ' 4 5 4 I   %�� 6 7
�� .gtqpchltns    @   @ ns   6 o    ���� 0 thegroupnames theGroupNames 7 �� 8 9
�� 
prmp 8 m     : : � ; ; ( C h o o s e   P e n d i n g   G r o u p 9 �� < =
�� 
inSL < m     > > � ? ?  W o r k   -   P e n d i n g = �� @��
�� 
mlsl @ m     !��
�� boovfals��   5 o      ���� ,0 text_returnedpending text_returnedPending 3  A B A l   ( (�� C D��   C 1 +Get the people/entries of the Current group    D � E E V G e t   t h e   p e o p l e / e n t r i e s   o f   t h e   C u r r e n t   g r o u p B  F G F r   ( 6 H I H n   ( 2 J K J 2  . 2��
�� 
azf4 K 4   ( .�� L
�� 
azf5 L l  * - M���� M c   * - N O N o   * +���� ,0 text_returnedcurrent text_returnedCurrent O m   + ,��
�� 
ctxt��  ��   I o      ���� &0 the_peoplecurrent the_peopleCurrent G  P Q P l  7 7��������  ��  ��   Q  R S R l   7 7�� T U��   T 1 +Get the people/entries of the Pending group    U � V V V G e t   t h e   p e o p l e / e n t r i e s   o f   t h e   P e n d i n g   g r o u p S  W X W r   7 E Y Z Y n   7 A [ \ [ 2  = A��
�� 
azf4 \ 4   7 =�� ]
�� 
azf5 ] l  9 < ^���� ^ c   9 < _ ` _ o   9 :���� ,0 text_returnedpending text_returnedPending ` m   : ;��
�� 
ctxt��  ��   Z o      ���� &0 the_peoplepending the_peoplePending X  a b a l  F F��������  ��  ��   b  c d c l   F F�� e f��   e 5 /iterate through the people of the Current group    f � g g ^ i t e r a t e   t h r o u g h   t h e   p e o p l e   o f   t h e   C u r r e n t   g r o u p d  h i h Y   F � j�� k l�� j k   [ � m m  n o n l  [ [��������  ��  ��   o  p q p l   [ [�� r s��   r * $get a person from the  Current group    s � t t H g e t   a   p e r s o n   f r o m   t h e     C u r r e n t   g r o u p q  u v u r   [ g w x w n   [ c y z y 4   ^ c�� {
�� 
cobj { o   a b���� 0 i   z o   [ ^���� &0 the_peoplecurrent the_peopleCurrent x o      ���� &0 thispersoncurrent thisPersonCurrent v  | } | l  h h��������  ��  ��   }  ~  ~ l   h h�� � ���   � : 4iterate through ALL the people of the Pending group*    � � � � h i t e r a t e   t h r o u g h   A L L   t h e   p e o p l e   o f   t h e   P e n d i n g   g r o u p *   � � � Y   h � ��� � ��� � k   } � � �  � � � l  } }��������  ��  ��   �  � � � l   } }�� � ���   � * $get a person from the  Pending group    � � � � H g e t   a   p e r s o n   f r o m   t h e     P e n d i n g   g r o u p �  � � � r   } � � � � n   } � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 x   � o   } ����� &0 the_peoplepending the_peoplePending � o      ���� &0 thispersonpending thisPersonPending �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � X RCheck if the person from the Current group is the same person as thisPersonPending    � � � � � C h e c k   i f   t h e   p e r s o n   f r o m   t h e   C u r r e n t   g r o u p   i s   t h e   s a m e   p e r s o n   a s   t h i s P e r s o n P e n d i n g �  ��� � Z   � � � ����� � =  � � � � � o   � ����� &0 thispersoncurrent thisPersonCurrent � o   � ����� &0 thispersonpending thisPersonPending � k   � � � �  � � � l   � ��� � ���   � !  if they are remove them.      � � � � 6   i f   t h e y   a r e   r e m o v e   t h e m .     �  � � � I  � ��� � �
�� .az00az46null���     azf6 � o   � ����� &0 thispersonpending thisPersonPending � �� ���
�� 
az47 � 4   � ��� �
�� 
azf5 � l  � � ����� � c   � � � � � o   � ����� ,0 text_returnedpending text_returnedPending � m   � ���
�� 
ctxt��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   �  save the contacts changes    � � � � 2 s a v e   t h e   c o n t a c t s   c h a n g e s �  � � � I  � �������
�� .coresavenull���     null��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��  ��  �� 0 x   � m   k l����  � n   l x � � � m   s w��
�� 
nmbr � n  l s � � � 2  o s��
�� 
cobj � o   l o���� &0 the_peoplepending the_peoplePending��   �  ��� � l  � ���������  ��  ��  ��  �� 0 i   k m   I J����  l n   J V � � � m   Q U��
�� 
nmbr � n  J Q � � � 2  M Q��
�� 
cobj � o   J M���� &0 the_peoplecurrent the_peopleCurrent��   i  ��� � l  � ���������  ��  ��  ��    m      � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��       �� � ���   � �
� .aevtoappnull  �   � **** � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k     � � �  �z�z  �}  �|   � �y�x�y 0 i  �x 0 x   �  ��w�v�u�t $�s (�r�q�p�o : >�n�m�l�k�j�i�h�g�f�e�d�c
�w 
azf5
�v 
pnam�u 0 thegroupnames theGroupNames
�t 
prmp
�s 
inSL
�r 
mlsl�q 
�p .gtqpchltns    @   @ ns  �o ,0 text_returnedcurrent text_returnedCurrent�n ,0 text_returnedpending text_returnedPending
�m 
ctxt
�l 
azf4�k &0 the_peoplecurrent the_peopleCurrent�j &0 the_peoplepending the_peoplePending
�i 
cobj
�h 
nmbr�g &0 thispersoncurrent thisPersonCurrent�f &0 thispersonpending thisPersonPending
�e 
az47
�d .az00az46null���     azf6
�c .coresavenull���     null�{ �� �*�-�,E�O������f� 
E�O������f� 
E�O*���&/a -E` O*���&/a -E` O uk_ a -a ,Ekh  _ a �/E` O Lk_ a -a ,Ekh _ a �/E` O_ _   _ a *���&/l O*j OPY h[OY��OP[OY��OPU ascr  ��ޭ