FasdUAS 1.101.10   ��   ��    k             l     ����  I     �������� "0 setcustomlabels setCustomLabels��  ��  ��  ��      	  l     ��������  ��  ��   	  
  
 i         I      �������� "0 setcustomlabels setCustomLabels��  ��    k           l     ��  ��   UO Get the required information from Contacts all at once for speed: the id and current value (or street) of every address, custom date, email, phone, related name, and url of every contact in the application, along with every contact's id. It's assumed that in the case of an address, any semicolon marker will be in the 'street' field.     �  �   G e t   t h e   r e q u i r e d   i n f o r m a t i o n   f r o m   C o n t a c t s   a l l   a t   o n c e   f o r   s p e e d :   t h e   i d   a n d   c u r r e n t   v a l u e   ( o r   s t r e e t )   o f   e v e r y   a d d r e s s ,   c u s t o m   d a t e ,   e m a i l ,   p h o n e ,   r e l a t e d   n a m e ,   a n d   u r l   o f   e v e r y   c o n t a c t   i n   t h e   a p p l i c a t i o n ,   a l o n g   w i t h   e v e r y   c o n t a c t ' s   i d .   I t ' s   a s s u m e d   t h a t   i n   t h e   c a s e   o f   a n   a d d r e s s ,   a n y   s e m i c o l o n   m a r k e r   w i l l   b e   i n   t h e   ' s t r e e t '   f i e l d .      O     �    k    �       r    �    n    h    J    h      !   n     " # " J   
  $ $  % & % 1    ��
�� 
az28 &  '�� ' 1    ��
�� 
ID  ��   # 2   
��
�� 
az27 !  ( ) ( n    $ * + * J    $ , ,  - . - 1    ��
�� 
az17 .  /�� / 1     ��
�� 
ID  ��   + 2   ��
�� 
az52 )  0 1 0 n   & 3 2 3 2 J   ( 3 4 4  5 6 5 1   ) +��
�� 
az17 6  7�� 7 1   - /��
�� 
ID  ��   3 2  & (��
�� 
az21 1  8 9 8 n   5 B : ; : J   7 B < <  = > = 1   8 :��
�� 
az17 >  ?�� ? 1   < >��
�� 
ID  ��   ; 2  5 7��
�� 
az20 9  @ A @ n   D Q B C B J   F Q D D  E F E 1   G I��
�� 
az17 F  G�� G 1   K M��
�� 
ID  ��   C 2  D F��
�� 
az53 A  H I H n   S ` J K J J   U ` L L  M N M 1   V X��
�� 
az17 N  O�� O 1   Z \��
�� 
ID  ��   K 2  S U��
�� 
az70 I  P�� P 1   b d��
�� 
ID  ��    2   ��
�� 
azf4  J       Q Q  R S R o      ���� 0 addressinfo addressInfo S  T U T o      ���� 0 	cdateinfo 	cDateInfo U  V W V o      ���� 0 	emailinfo 	emailInfo W  X Y X o      ���� 0 	phoneinfo 	phoneInfo Y  Z [ Z o      ���� 0 	rnameinfo 	rNameInfo [  \ ] \ o      ���� 0 urlinfo urlInfo ]  ^�� ^ o      ���� 0 	peopleids 	peopleIDs��     _�� _ l  � ��� ` a��   ` � � There's a problem referencing 'instant messages' with AppleScript in Contacts 9.0, so they're not included here. I don't know anything about 'social profiles'.    a � b b@   T h e r e ' s   a   p r o b l e m   r e f e r e n c i n g   ' i n s t a n t   m e s s a g e s '   w i t h   A p p l e S c r i p t   i n   C o n t a c t s   9 . 0 ,   s o   t h e y ' r e   n o t   i n c l u d e d   h e r e .   I   d o n ' t   k n o w   a n y t h i n g   a b o u t   ' s o c i a l   p r o f i l e s ' .��    m      c c�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��     d e d l  � ���������  ��  ��   e  f g f l  � ��� h i��   h j d Now identify and effect any required label and value changes or deletions, starting with addresses.    i � j j �   N o w   i d e n t i f y   a n d   e f f e c t   a n y   r e q u i r e d   l a b e l   a n d   v a l u e   c h a n g e s   o r   d e l e t i o n s ,   s t a r t i n g   w i t h   a d d r e s s e s . g  k l k r   � � m n m I   � ��� o���� 0 
getchanges 
getChanges o  p q p o   � ����� 0 addressinfo addressInfo q  r�� r o   � ����� 0 	peopleids 	peopleIDs��  ��   n o      ���� 0 thesechanges theseChanges l  s t s X   �. u�� v u k   �) w w  x y x r   � � z { z o   � ����� 0 
thischange 
thisChange { J       | |  } ~ } o      ���� 0 newlabel newLabel ~   �  o      ���� 0 newvalue newValue �  � � � o      ���� 0 dataid dataID �  ��� � o      ���� 0 	contactid 	contactID��   y  ��� � Z   �) � ��� � � l  � � ����� � ?   � � � � � o   � ����� 0 newlabel newLabel � m   � � � � � � �  ��  ��   � O  � � � � O  � � � � r   � � � � J   � � � �  � � � o   � ����� 0 newlabel newLabel �  ��� � o   � ����� 0 newvalue newValue��   � J       � �  � � � n      � � � 1   ���
�� 
az18 �  g   � � �  ��� � n      � � � 1  
��
�� 
az28 �  g  	
��   � n   � � � � � 5   � ��� ���
�� 
az27 � o   � ����� 0 dataid dataID
�� kfrmID   � 5   � ��� ���
�� 
azf4 � o   � ����� 0 	contactid 	contactID
�� kfrmID   � m   � � � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��   � k  ) � �  � � � l �� � ���   � T N Zero-length label returned for semicolon-only field value. Delete the object.    � � � � �   Z e r o - l e n g t h   l a b e l   r e t u r n e d   f o r   s e m i c o l o n - o n l y   f i e l d   v a l u e .   D e l e t e   t h e   o b j e c t . �  ��� � O ) � � � I (�� ���
�� .coredelonull���     obj  � n  $ � � � 5  $�� ���
�� 
az27 � o   ���� 0 dataid dataID
�� kfrmID   � 5  �� ���
�� 
azf4 � o  ���� 0 	contactid 	contactID
�� kfrmID  ��   � m   � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��  �� 0 
thischange 
thisChange v o   � ����� 0 thesechanges theseChanges t  � � � l //��������  ��  ��   �  � � � l //�� � ���   �   Custom dates.    � � � �    C u s t o m   d a t e s . �  � � � r  /8 � � � I  /6�� ����� 0 
getchanges 
getChanges �  � � � o  01���� 0 	cdateinfo 	cDateInfo �  ��� � o  12���� 0 	peopleids 	peopleIDs��  ��   � o      ���� 0 thesechanges theseChanges �  � � � X  9� ��� � � k  K� � �  � � � r  Ki � � � o  KL���� 0 
thischange 
thisChange � J       � �  � � � o      ���� 0 newlabel newLabel �  � � � o      ���� 0 newvalue newValue �  � � � o      ���� 0 dataid dataID �  ��� � o      ���� 0 	contactid 	contactID��   �  ��� � Z  j� � ��� � � l jo ����� � ?  jo � � � o  jk���� 0 newlabel newLabel � m  kn � � � � �  ��  ��   � O r� � � � O v� � � � r  �� � � � J  �� � �  � � � o  ������ 0 newlabel newLabel �  ��� � o  ������ 0 newvalue newValue��   � J       � �  � � � n      � � � 1  ����
�� 
az18 �  g  �� �  ��� � n      � � � 1  ����
�� 
az17 �  g  ����   � n  v� � � � 5  }��� ���
�� 
az52 � o  ~���� 0 dataid dataID
�� kfrmID   � 5  v}�� ���
�� 
azf4 � o  xy�� 0 	contactid 	contactID
�� kfrmID   � m  rs � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��   � k  �� � �  � � � l ���~ � ��~   �   Simile.    � � � �    S i m i l e . �  ��} � O �� � � � I ���| ��{
�| .coredelonull���     obj  � n  �� � � � 5  ���z ��y
�z 
az52 � o  ���x�x 0 dataid dataID
�y kfrmID   � 5  ���w �v
�w 
azf4  o  ���u�u 0 	contactid 	contactID
�v kfrmID  �{   � m  ���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �}  ��  �� 0 
thischange 
thisChange � o  <=�t�t 0 thesechanges theseChanges �  l ���s�r�q�s  �r  �q    l ���p�p     Emails.    �    E m a i l s . 	
	 r  �� I  ���o�n�o 0 
getchanges 
getChanges  o  ���m�m 0 	emailinfo 	emailInfo �l o  ���k�k 0 	peopleids 	peopleIDs�l  �n   o      �j�j 0 thesechanges theseChanges
  X  �P�i k  �K  r  �� o  ���h�h 0 
thischange 
thisChange J        o      �g�g 0 newlabel newLabel  o      �f�f 0 newvalue newValue   o      �e�e 0 dataid dataID  !�d! o      �c�c 0 	contactid 	contactID�d   "�b" Z  �K#$�a%# l � &�`�_& ?  � '(' o  ���^�^ 0 newlabel newLabel( m  ��)) �**  �`  �_  $ O 2+,+ O 1-.- r  0/0/ J  11 232 o  �]�] 0 newlabel newLabel3 4�\4 o  �[�[ 0 newvalue newValue�\  0 J      55 676 n     898 1  !%�Z
�Z 
az189  g   !7 :�Y: n     ;<; 1  ,.�X
�X 
az17<  g  +,�Y  . n  =>= 5  �W?�V
�W 
az21? o  �U�U 0 dataid dataID
�V kfrmID  > 5  �T@�S
�T 
azf4@ o  	
�R�R 0 	contactid 	contactID
�S kfrmID  , m  AA�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �a  % O 5KBCB I 9J�QD�P
�Q .coredelonull���     obj D n  9FEFE 5  @F�OG�N
�O 
az21G o  AB�M�M 0 dataid dataID
�N kfrmID  F 5  9@�LH�K
�L 
azf4H o  ;<�J�J 0 	contactid 	contactID
�K kfrmID  �P  C m  56II�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �b  �i 0 
thischange 
thisChange o  ���I�I 0 thesechanges theseChanges JKJ l QQ�H�G�F�H  �G  �F  K LML l QQ�ENO�E  N   Phones.   O �PP    P h o n e s .M QRQ r  QZSTS I  QX�DU�C�D 0 
getchanges 
getChangesU VWV o  RS�B�B 0 	phoneinfo 	phoneInfoW X�AX o  ST�@�@ 0 	peopleids 	peopleIDs�A  �C  T o      �?�? 0 thesechanges theseChangesR YZY X  [�[�>\[ k  m�]] ^_^ r  m�`a` o  mn�=�= 0 
thischange 
thisChangea J      bb cdc o      �<�< 0 newlabel newLabeld efe o      �;�; 0 newvalue newValuef ghg o      �:�: 0 dataid dataIDh i�9i o      �8�8 0 	contactid 	contactID�9  _ j�7j Z  ��kl�6mk l ��n�5�4n ?  ��opo o  ���3�3 0 newlabel newLabelp m  ��qq �rr  �5  �4  l O ��sts O ��uvu r  ��wxw J  ��yy z{z o  ���2�2 0 newlabel newLabel{ |�1| o  ���0�0 0 newvalue newValue�1  x J      }} ~~ n     ��� 1  ���/
�/ 
az18�  g  �� ��.� n     ��� 1  ���-
�- 
az17�  g  ���.  v n  ����� 5  ���,��+
�, 
az20� o  ���*�* 0 dataid dataID
�+ kfrmID  � 5  ���)��(
�) 
azf4� o  ���'�' 0 	contactid 	contactID
�( kfrmID  t m  �����                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �6  m O ����� I ���&��%
�& .coredelonull���     obj � n  ����� 5  ���$��#
�$ 
az20� o  ���"�" 0 dataid dataID
�# kfrmID  � 5  ���!�� 
�! 
azf4� o  ���� 0 	contactid 	contactID
�  kfrmID  �%  � m  �����                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �7  �> 0 
thischange 
thisChange\ o  ^_�� 0 thesechanges theseChangesZ ��� l ������  �  �  � ��� l ������  �   Related names.   � ���    R e l a t e d   n a m e s .� ��� r  ����� I  ������ 0 
getchanges 
getChanges� ��� o  ���� 0 	rnameinfo 	rNameInfo� ��� o  ���� 0 	peopleids 	peopleIDs�  �  � o      �� 0 thesechanges theseChanges� ��� X  �r���� k  �m�� ��� r  ���� o  ���� 0 
thischange 
thisChange� J      �� ��� o      �� 0 newlabel newLabel� ��� o      �� 0 newvalue newValue� ��� o      �� 0 dataid dataID� ��� o      �� 0 	contactid 	contactID�  � ��� Z  m����� l "��
�	� ?  "��� o  �� 0 newlabel newLabel� m  !�� ���  �
  �	  � O %T��� O )S��� r  9R��� J  9=�� ��� o  9:�� 0 newlabel newLabel� ��� o  :;�� 0 newvalue newValue�  � J      �� ��� n     ��� 1  CG�
� 
az18�  g  BC� ��� n     ��� 1  NP�
� 
az17�  g  MN�  � n  )6��� 5  06��� 
� 
az53� o  12���� 0 dataid dataID
�  kfrmID  � 5  )0�����
�� 
azf4� o  +,���� 0 	contactid 	contactID
�� kfrmID  � m  %&���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �  � O Wm��� I [l�����
�� .coredelonull���     obj � n  [h��� 5  bh�����
�� 
az53� o  cd���� 0 dataid dataID
�� kfrmID  � 5  [b�����
�� 
azf4� o  ]^���� 0 	contactid 	contactID
�� kfrmID  ��  � m  WX���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  �  � 0 
thischange 
thisChange� o  ������ 0 thesechanges theseChanges� ��� l ss��������  ��  ��  � ��� l ss������  �   URLs.   � ���    U R L s .� ��� r  s|��� I  sz������� 0 
getchanges 
getChanges� ��� o  tu���� 0 urlinfo urlInfo� ���� o  uv���� 0 	peopleids 	peopleIDs��  ��  � o      ���� 0 thesechanges theseChanges� ��� X  }����� k  ���� ��� r  ����� o  ������ 0 
thischange 
thisChange� J      �� ��� o      ���� 0 newlabel newLabel� ��� o      ���� 0 newvalue newValue� ��� o      ���� 0 dataid dataID� ���� o      ���� 0 	contactid 	contactID��  � ���� Z  �������� l �������� ?  ��� � o  ������ 0 newlabel newLabel  m  �� �  ��  ��  � O �� O �� r  �� J  ��		 

 o  ������ 0 newlabel newLabel �� o  ������ 0 newvalue newValue��   J        n      1  ����
�� 
az18  g  �� �� n      1  ����
�� 
az17  g  ����   n  �� 5  ������
�� 
az70 o  ������ 0 dataid dataID
�� kfrmID   5  ������
�� 
azf4 o  ������ 0 	contactid 	contactID
�� kfrmID   m  ���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  � O �� I ������
�� .coredelonull���     obj  n  �� 5  ������
�� 
az70 o  ������ 0 dataid dataID
�� kfrmID   5  ���� ��
�� 
azf4  o  ������ 0 	contactid 	contactID
�� kfrmID  ��   m  ��!!�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  �� 0 
thischange 
thisChange� o  ������ 0 thesechanges theseChanges� "#" l ��������  ��  ��  # $%$ l ��&'��  &   Save the changes.   ' �(( $   S a v e   t h e   c h a n g e s .% )��) O *+* I ������
�� .coresavenull���     null��  ��  + m  ,,�                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��    -.- l     ��������  ��  ��  . /0/ l     ��12��  1 � � Find any semicolon markers in the info batch for a particular contact detail type, work out new label and value settings, and return a list of all the changes required for the batch along with the relevant IDs.   2 �33�   F i n d   a n y   s e m i c o l o n   m a r k e r s   i n   t h e   i n f o   b a t c h   f o r   a   p a r t i c u l a r   c o n t a c t   d e t a i l   t y p e ,   w o r k   o u t   n e w   l a b e l   a n d   v a l u e   s e t t i n g s ,   a n d   r e t u r n   a   l i s t   o f   a l l   t h e   c h a n g e s   r e q u i r e d   f o r   t h e   b a t c h   a l o n g   w i t h   t h e   r e l e v a n t   I D s .0 454 l     ��67��  6 U O {{label, value, info id, contact id}, {label, value, info id, contact id}, � }   7 �88 �   { { l a b e l ,   v a l u e ,   i n f o   i d ,   c o n t a c t   i d } ,   { l a b e l ,   v a l u e ,   i n f o   i d ,   c o n t a c t   i d } ,   &   }5 9��9 i    :;: I      ��<���� 0 
getchanges 
getChanges< =>= o      ���� 0 thisinfo thisInfo> ?��? o      ���� 0 	peopleids 	peopleIDs��  ��  ; k     ~@@ ABA l     ��CD��  C[U thisInfo contains two lists, each of which contains as many lists as there are contacts. Each list in the first list corresponds to a contact and contains the value of every instance of the current contact detail type the contact may have. The matching lists in the second list contain the ids of the actual data objects in the application.   D �EE�   t h i s I n f o   c o n t a i n s   t w o   l i s t s ,   e a c h   o f   w h i c h   c o n t a i n s   a s   m a n y   l i s t s   a s   t h e r e   a r e   c o n t a c t s .   E a c h   l i s t   i n   t h e   f i r s t   l i s t   c o r r e s p o n d s   t o   a   c o n t a c t   a n d   c o n t a i n s   t h e   v a l u e   o f   e v e r y   i n s t a n c e   o f   t h e   c u r r e n t   c o n t a c t   d e t a i l   t y p e   t h e   c o n t a c t   m a y   h a v e .   T h e   m a t c h i n g   l i s t s   i n   t h e   s e c o n d   l i s t   c o n t a i n   t h e   i d s   o f   t h e   a c t u a l   d a t a   o b j e c t s   i n   t h e   a p p l i c a t i o n .B FGF l     ��HI��  H { u peopleIDs contains the IDs of all the contacts in the application, the order matching that of the lists in thisInfo.   I �JJ �   p e o p l e I D s   c o n t a i n s   t h e   I D s   o f   a l l   t h e   c o n t a c t s   i n   t h e   a p p l i c a t i o n ,   t h e   o r d e r   m a t c h i n g   t h a t   o f   t h e   l i s t s   i n   t h i s I n f o .G KLK h     ��M�� 0 o  M k      NN OPO j     ��Q�� 0 currentvalues currentValuesQ n     RSR  :    S o     ���� 0 thisinfo thisInfoP TUT j   	 ��V�� 0 dataids dataIDsV n   	 WXW  ;    X o   	 ���� 0 thisinfo thisInfoU YZY j    ��[�� 0 
contactids 
contactIDs[ o    ���� 0 	peopleids 	peopleIDsZ \��\ j    ��]�� 0 changes  ] J    ����  ��  L ^_^ l   ��������  ��  ��  _ `a` r    bcb n   ded 1   	 ��
�� 
txdle 1    	��
�� 
ascrc o      ���� 	0 astid  a fgf r    hih m    jj �kk  ;i n     lml 1    ��
�� 
txdlm 1    ��
�� 
ascrg non l   ��������  ��  ��  o pqp l   ��rs��  r   For each contact �   s �tt &   F o r   e a c h   c o n t a c t   &q uvu Y    rw��xy��w k   " mzz {|{ l  " "��}~��  } K E � and for each instance it may have of this type of contact detail �   ~ � �   &   a n d   f o r   e a c h   i n s t a n c e   i t   m a y   h a v e   o f   t h i s   t y p e   o f   c o n t a c t   d e t a i l   &| ��� r   " *��� n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 contact  � n  " %��� o   # %���� 0 currentvalues currentValues� o   " #���� 0 o  � o      ���� 0 thesevalues theseValues� ���� Y   + m�������� k   9 h�� ��� l  9 9������  � � � � check the instance's value. If it contains a semicolon, append a list to this handler's output containing the text before the semicolon, the text after it, the ID of the object in the application, and the ID of the contact.   � ����   &   c h e c k   t h e   i n s t a n c e ' s   v a l u e .   I f   i t   c o n t a i n s   a   s e m i c o l o n ,   a p p e n d   a   l i s t   t o   t h i s   h a n d l e r ' s   o u t p u t   c o n t a i n i n g   t h e   t e x t   b e f o r e   t h e   s e m i c o l o n ,   t h e   t e x t   a f t e r   i t ,   t h e   I D   o f   t h e   o b j e c t   i n   t h e   a p p l i c a t i o n ,   a n d   t h e   I D   o f   t h e   c o n t a c t .� ��� r   9 ?��� n   9 =��� 4   : =���
�� 
cobj� o   ; <���� 0 i  � o   9 :���� 0 thesevalues theseValues� o      ���� 0 	thisvalue 	thisValue� ���� Z   @ h������� l  @ C������ E   @ C��� o   @ A���� 0 	thisvalue 	thisValue� m   A B�� ���  ;��  ��  � k   F d�� ��� l  F F������  � � � It's assumed there are no white spaces next to the semicolon(s). Where there's ONLY a semicolon in the field, the texts either side are zero-length.   � ���*   I t ' s   a s s u m e d   t h e r e   a r e   n o   w h i t e   s p a c e s   n e x t   t o   t h e   s e m i c o l o n ( s ) .   W h e r e   t h e r e ' s   O N L Y   a   s e m i c o l o n   i n   t h e   f i e l d ,   t h e   t e x t s   e i t h e r   s i d e   a r e   z e r o - l e n g t h .� ���� r   F d��� J   F _�� ��� n   F J��� 4   G J���
�� 
citm� m   H I���� � o   F G���� 0 	thisvalue 	thisValue� ��� n   J N��� 4   K N���
�� 
citm� m   L M���� � o   J K�� 0 	thisvalue 	thisValue� ��� n   N W��� 4   T W�~�
�~ 
cobj� o   U V�}�} 0 i  � n   N T��� 4   Q T�|�
�| 
cobj� o   R S�{�{ 0 contact  � n  N Q��� o   O Q�z�z 0 dataids dataIDs� o   N O�y�y 0 o  � ��x� n   W ]��� 4   Z ]�w�
�w 
cobj� o   [ \�v�v 0 contact  � n  W Z��� o   X Z�u�u 0 
contactids 
contactIDs� o   W X�t�t 0 o  �x  � n      ���  ;   b c� n  _ b��� o   ` b�s�s 0 changes  � o   _ `�r�r 0 o  ��  ��  ��  ��  �� 0 i  � m   . /�q�q � l  / 4��p�o� I  / 4�n��m
�n .corecnte****       ****� o   / 0�l�l 0 thesevalues theseValues�m  �p  �o  ��  ��  �� 0 contact  x m    �k�k y l   ��j�i� I   �h��g
�h .corecnte****       ****� o    �f�f 0 	peopleids 	peopleIDs�g  �j  �i  ��  v ��� l  s s�e�d�c�e  �d  �c  � ��� r   s x��� o   s t�b�b 	0 astid  � n     ��� 1   u w�a
�a 
txdl� 1   t u�`
�` 
ascr� ��� l  y y�_�^�]�_  �^  �]  � ��� l  y y�\���\  � K E Return whatever changes are needed with this kind of contact detail.   � ��� �   R e t u r n   w h a t e v e r   c h a n g e s   a r e   n e e d e d   w i t h   t h i s   k i n d   o f   c o n t a c t   d e t a i l .� ��[� L   y ~�� n  y }��� o   z |�Z�Z 0 changes  � o   y z�Y�Y 0 o  �[  ��       �X�����X  � �W�V�U�W "0 setcustomlabels setCustomLabels�V 0 
getchanges 
getChanges
�U .aevtoappnull  �   � ****� �T �S�R���Q�T "0 setcustomlabels setCustomLabels�S  �R  � �P�O�N�M�L�K�J�I�H�G�F�E�D�P 0 addressinfo addressInfo�O 0 	cdateinfo 	cDateInfo�N 0 	emailinfo 	emailInfo�M 0 	phoneinfo 	phoneInfo�L 0 	rnameinfo 	rNameInfo�K 0 urlinfo urlInfo�J 0 	peopleids 	peopleIDs�I 0 thesechanges theseChanges�H 0 
thischange 
thisChange�G 0 newlabel newLabel�F 0 newvalue newValue�E 0 dataid dataID�D 0 	contactid 	contactID�  c�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2 ��1�0�/ �)q��.
�C 
azf4
�B 
az27
�A 
az28
�@ 
ID  
�? 
az52
�> 
az17
�= 
az21
�< 
az20
�; 
az53
�: 
az70�9 
�8 
cobj�7 �6 �5 �4 0 
getchanges 
getChanges
�3 
kocl
�2 .corecnte****       ****
�1 kfrmID  
�0 
az18
�/ .coredelonull���     obj 
�. .coresavenull���     null�Q� �*�-[�-[�,\[�,\Zlv\[�-[�,\[�,\Zlv\[�-[�,\[�,\Zlv\[�-[�,\[�,\Zlv\[�-[�,\[�,\Zlv\[�-[�,\[�,\Zlv\[�,\Z�vE[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�ZOPUO*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O*��l+ E�O ��[a �l kh �E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO�a  4� ,*�a 0�a 0 ��lvE[�k/*a ,FZ[�l/*�,FZUUY � *�a 0�a 0j U[OY��O� *j U� �-;�,�+���*�- 0 
getchanges 
getChanges�, �)��) �  �(�'�( 0 thisinfo thisInfo�' 0 	peopleids 	peopleIDs�+  � �&�%�$�#�"�!� ��& 0 thisinfo thisInfo�% 0 	peopleids 	peopleIDs�$ 0 o  �# 	0 astid  �" 0 contact  �! 0 thesevalues theseValues�  0 i  � 0 	thisvalue 	thisValue� �M���j���������� 0 o  � �������
� .ascrinit****      � ****� k     �� O�� T�� Y�� \��  �  �  � ����� 0 currentvalues currentValues� 0 dataids dataIDs� 0 
contactids 
contactIDs� 0 changes  � �
�	���
 0 currentvalues currentValues�	 0 dataids dataIDs� 0 
contactids 
contactIDs� 0 changes  � b   5E�Ob   6E�Ob  �Ojv�
� 
ascr
� 
txdl
� .corecnte****       ****� 0 currentvalues currentValues
� 
cobj
� 
citm� 0 dataids dataIDs� 0 
contactids 
contactIDs� � 0 changes  �* ��K S�O��,E�O���,FO ]k�j kh ��,�/E�O Ak�j kh ��/E�O�� #��k/��l/��,�/�/��,�/�v��,6FY h[OY��[OY��O���,FO��,E� �������
� .aevtoappnull  �   � ****� k     ��  ��  �  �  �  � �� "0 setcustomlabels setCustomLabels� *j+  ascr  ��ޭ