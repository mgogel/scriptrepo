FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # Change Address Book's Email Labels     � 	 	 F   C h a n g e   A d d r e s s   B o o k ' s   E m a i l   L a b e l s   
  
 l     ��  ��      John Maisey      �      J o h n   M a i s e y        l     ��  ��      9 September 2007     �   "   9   S e p t e m b e r   2 0 0 7      l     ��  ��     - http://www.nhoj.co.uk     �   . -   h t t p : / / w w w . n h o j . c o . u k      l     ��  ��    ? 9 From similar script written for phone labels 27 May 2005     �   r   F r o m   s i m i l a r   s c r i p t   w r i t t e n   f o r   p h o n e   l a b e l s   2 7   M a y   2 0 0 5      l     ��������  ��  ��       !   l     " # $ " r      % & % m      ' ' � ( (  I N T E R N E T & o      ���� 0 theold theOld #   label to replace    $ � ) ) "   l a b e l   t o   r e p l a c e !  * + * l    , - . , r     / 0 / m     1 1 � 2 2  w o r k 0 o      ���� 0 thenew theNew -  
 new label    . � 3 3    n e w   l a b e l +  4 5 4 l     ��������  ��  ��   5  6 7 6 l   � 8���� 8 O    � 9 : 9 k    � ; ;  < = < l   �� > ?��   >  to mark time taken     ? � @ @ & t o   m a r k   t i m e   t a k e n   =  A B A r     C D C l    E���� E I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   D o      ���� 0 	starttime 	startTime B  F G F l   �� H I��   H 9 3 get people whose email labels contain the old term    I � J J f   g e t   p e o p l e   w h o s e   e m a i l   l a b e l s   c o n t a i n   t h e   o l d   t e r m G  K L K r    % M N M l   # O���� O e    # P P 6   # Q R Q 2    ��
�� 
azf4 R E    ! S T S n     U V U 1    ��
�� 
az18 V 2   ��
�� 
az21 T o     ���� 0 theold theOld��  ��   N o      ���� 0 	thepeople 	thePeople L  W X W l  & &�� Y Z��   Y    loop through these people    Z � [ [ 4   l o o p   t h r o u g h   t h e s e   p e o p l e X  \ ] \ X   & ` ^�� _ ^ k   6 [ ` `  a b a l  6 6�� c d��   c 3 - loop through email entries with the old term    d � e e Z   l o o p   t h r o u g h   e m a i l   e n t r i e s   w i t h   t h e   o l d   t e r m b  f�� f X   6 [ g�� h g k   Q V i i  j k j l  Q Q�� l m��   l %  set the label to the new label    m � n n >   s e t   t h e   l a b e l   t o   t h e   n e w   l a b e l k  o�� o r   Q V p q p o   Q R���� 0 thenew theNew q l      r���� r n       s t s 1   S U��
�� 
az18 t o   R S���� 0 myemail myEmail��  ��  ��  �� 0 myemail myEmail h l  9 E u���� u 6  9 E v w v n   9 < x y x 2  : <��
�� 
az21 y o   9 :���� 0 aperson aPerson w =  = D z { z 1   > @��
�� 
az18 { o   A C���� 0 theold theOld��  ��  ��  �� 0 aperson aPerson _ o   ) *���� 0 	thepeople 	thePeople ]  | } | l  a a�� ~ ��   ~   to refresh     � � �    t o   r e f r e s h }  � � � I  a f������
�� .coresavenull���     null��  ��   �  � � � l  g g�� � ���   �  to mark time taken    � � � � $ t o   m a r k   t i m e   t a k e n �  � � � r   g r � � � \   g n � � � l  g l ����� � I  g l������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   l m���� 0 	starttime 	startTime � o      ���� 0 	takentime 	takenTime �  � � � l  s s�� � ���   �   Display confirmation    � � � � *   D i s p l a y   c o n f i r m a t i o n �  ��� � I  s ��� � �
�� .sysodlogaskr        TEXT � c   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s � � � � b   s ~ � � � b   s | � � � b   s x � � � m   s v � � � � � 
 A l l   " � o   v w���� 0 theold theOld � m   x { � � � � �  "   c h a n g e d   t o   " � o   | }���� 0 thenew theNew � m   ~ � � � � � �  " . � o   � ���
�� 
ret  � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thepeople 	thePeople��  ��  ��   � m   � � � � � � �     r e c o r d s   c h a n g e d � o   � ���
�� 
ret  � m   � � � � � � �  i n   � o   � ����� 0 	takentime 	takenTime � m   � � � � � � �    s e c o n d s . � m   � ���
�� 
TEXT � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
appr � m   � � � � � � � 2 C h a n g e   E m a i l   L a b e l   S c r i p t � �� ���
�� 
disp � m   � ����� ��  ��   : m    	 � ��                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��   7  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �    � �  * � �  6����  ��  ��   � ������ 0 aperson aPerson�� 0 myemail myEmail � ! '�� 1�� ������� ����������������� � � ��� � � ����� ����� ��������� 0 theold theOld�� 0 thenew theNew
�� .misccurdldt    ��� null�� 0 	starttime 	startTime
�� 
azf4 �  
�� 
az21
�� 
az18�� 0 	thepeople 	thePeople
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .coresavenull���     null�� 0 	takentime 	takenTime
�� 
ret 
�� 
TEXT
�� 
btns
�� 
dflt
�� 
appr
�� 
disp�� 
�� .sysodlogaskr        TEXT�� ��E�O�E�O� �*j E�O*�-�[�-�,\Z�@1EE�O 9�[��l kh   $��-�[�,\Z�81[��l kh á�,F[OY��[OY��O*j O*j �E` Oa �%a %�%a %_ %�j %a %_ %a %_ %a %a &a a kva ka a a ka   U ascr  ��ޭ