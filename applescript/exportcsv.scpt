FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Earthlink requires a return at the bottom of the csv or it ignores last record
office phone, cell phone, pager, and fax all seem to be filled by business phone

     � 	 	D 
 E a r t h l i n k   r e q u i r e s   a   r e t u r n   a t   t h e   b o t t o m   o f   t h e   c s v   o r   i t   i g n o r e s   l a s t   r e c o r d 
 o f f i c e   p h o n e ,   c e l l   p h o n e ,   p a g e r ,   a n d   f a x   a l l   s e e m   t o   b e   f i l l e d   b y   b u s i n e s s   p h o n e 
 
   
  
 l     ��������  ��  ��        l    6 ����  r     6    J     2       m        �   
 T i t l e      m       �    F i r s t   N a m e      m       �    L a s t   N a m e      m         � ! !  M i d d l e   N a m e   " # " m     $ $ � % %  N a m e #  & ' & m     ( ( � ) )  N i c k n a m e '  * + * m     , , � - -  E - m a i l   A d d r e s s +  . / . m     0 0 � 1 1   E - m a i l   2   A d d r e s s /  2 3 2 m    	 4 4 � 5 5   E - m a i l   3   A d d r e s s 3  6 7 6 m   	 
 8 8 � 9 9  H o m e   P h o n e 7  : ; : m   
  < < � = =  H o m e   F a x ;  > ? > m     @ @ � A A  M o b i l e   P h o n e ?  B C B m     D D � E E  B u s i n e s s   P h o n e C  F G F m     H H � I I  B u s i n e s s   F a x G  J K J m     L L � M M 
 P a g e r K  N O N m     P P � Q Q  O t h e r   P h o n e O  R S R m     T T � U U  H o m e   S t r e e t S  V W V m     X X � Y Y  H o m e   C i t y W  Z [ Z m     \ \ � ] ]   H o m e   P o s t a l   C o d e [  ^ _ ^ m     ` ` � a a  H o m e   S t a t e _  b c b m     d d � e e & H o m e   C o u n t r y / R e g i o n c  f g f m    " h h � i i  B u s i n e s s   S t r e e t g  j k j m   " % l l � m m  B u s i n e s s   C i t y k  n o n m   % ( p p � q q ( B u s i n e s s   P o s t a l   C o d e o  r s r m   ( + t t � u u  B u s i n e s s   S t a t e s  v�� v m   + . w w � x x . B u s i n e s s   C o u n t r y / R e g i o n��    o      ���� 0 	thevalues 	theValues��  ��     y z y l  7 C {���� { r   7 C | } | n  7 ? ~  ~ I   8 ?�� ����� 0 list2string   �  ��� � o   8 ;���� 0 	thevalues 	theValues��  ��     f   7 8 } o      ���� 0 theline theLine��  ��   z  � � � l  D K ����� � r   D K � � � o   D G���� 0 theline theLine � o      ���� 0 thedata theData��  ��   �  � � � l  L o ����� � r   L o � � � n   L k � � � 1   g k��
�� 
bhit � l  L g ����� � I  L g�� � �
�� .sysodlogaskr        TEXT � m   L O � � � � � � I n c l u d e   a l l   r e c o r d s   i n   A d d r e s s   B o o k ,   o r   o n l y   r e c o r d s   w i t h   E - m a i l   a d d r e s s e s ? � �� � �
�� 
btns � J   R ] � �  � � � m   R U � � � � �  C a n c e l �  � � � m   U X � � � � � " O n l y   w i t h   E - m a i l s �  ��� � m   X [ � � � � �  A l l   r e c o r d s��   � �� ���
�� 
dflt � m   ` a���� ��  ��  ��   � o      ���� 0 	theresult 	theResult��  ��   �  � � � l  pE ����� � O   pE � � � k   vD � �  � � � r   v  � � � 2   v {��
�� 
azf4 � o      ���� 0 	thepeople 	thePeople �  � � � l  � ��� � ���   � ) #set thePeople to people 1 through 3    � � � � F s e t   t h e P e o p l e   t o   p e o p l e   1   t h r o u g h   3 �  � � � r   � � � � � m   � �����   � o      ���� 0 thecount theCount �  ��� � X   �D ��� � � k   �? � �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
az21 � o   � ����� 0 
eachperson 
eachPerson � o      ���� 0 	theemails 	theEmails �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	theemails 	theEmails��   � o      ���� 0 c   �  ��� � Z   �? � ����� � G   � � � � � =   � � � � � o   � ����� 0 	theresult 	theResult � m   � � � � � � �  A l l   r e c o r d s � ?   � � � � � o   � ����� 0 c   � m   � �����   � k   �; � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
az39 � o   � ����� 0 
eachperson 
eachPerson � o      ���� 0 thetitle theTitle �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 setvalue setValue �  ��� � o   � ����� 0 thetitle theTitle��  ��   �  f   � � � o      ���� 0 thetitle theTitle �  � � � l  � ��� � ���   �  0 Title    � � � �  0   T i t l e �  � � � r   � � � � � J   � � � �  ��� � o   � ����� 0 thetitle theTitle��   � o      ���� 0 	thevalues 	theValues �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
azf7 � o   � ����� 0 
eachperson 
eachPerson � o      ���� 0 thenamefirst theNameFirst �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 setvalue setValue �  ��� � o   � ����� 0 thenamefirst theNameFirst��  ��   �  f   � � � o      ���� 0 thenamefirst theNameFirst �  � � � l   �� � ���   �  1 First Name    � � � �  1   F i r s t   N a m e �  � � � r    � � � b   	   o   ���� 0 	thevalues 	theValues J   �� o  ���� 0 thenamefirst theNameFirst��   � o      ���� 0 	thevalues 	theValues �  r   n  	 1  ��
�� 
azf8	 o  ���� 0 
eachperson 
eachPerson o      ���� 0 thenamelast theNameLast 

 r  $ n   I   ������ 0 setvalue setValue �� o  ���� 0 thenamelast theNameLast��  ��    f   o      ���� 0 thenamelast theNameLast  l %%����    2 Last Name    �  2   L a s t   N a m e  r  %2 b  %. o  %(���� 0 	thevalues 	theValues J  (- �� o  (+���� 0 thenamelast theNameLast��   o      ���� 0 	thevalues 	theValues   r  3<!"! n  38#$# 1  48��
�� 
az40$ o  34���� 0 
eachperson 
eachPerson" o      ���� 0 thenamemiddle theNameMiddle  %&% r  =I'(' n =E)*) I  >E��+���� 0 setvalue setValue+ ,��, o  >A���� 0 thenamemiddle theNameMiddle��  ��  *  f  =>( o      ���� 0 thenamemiddle theNameMiddle& -.- l JJ��/0��  /  3 Middle Name   0 �11  3   M i d d l e   N a m e. 232 r  JW454 b  JS676 o  JM���� 0 	thevalues 	theValues7 J  MR88 9��9 o  MP���� 0 thenamemiddle theNameMiddle��  5 o      ���� 0 	thevalues 	theValues3 :;: l XX��<=��  <  4 Name (Display Name)   = �>> * 4   N a m e   ( D i s p l a y   N a m e ); ?@? r  XaABA n  X]CDC 1  Y]��
�� 
pnamD o  XY���� 0 
eachperson 
eachPersonB o      ���� 0 thename theName@ EFE r  bnGHG n bjIJI I  cj��K���� 0 setvalue setValueK L��L o  cf���� 0 thename theName��  ��  J  f  bcH o      ���� 0 thename theNameF MNM r  o|OPO b  oxQRQ o  or���� 0 	thevalues 	theValuesR J  rwSS T��T o  ru���� 0 thename theName��  P o      ���� 0 	thevalues 	theValuesN UVU l }}��WX��  W  
5 Nickname   X �YY  5   N i c k n a m eV Z[Z r  }�\]\ n  }�^_^ 1  ~���
�� 
az43_ o  }~���� 0 
eachperson 
eachPerson] o      ���� 0 thenamenick theNameNick[ `a` r  ��bcb n ��ded I  ����f���� 0 setvalue setValuef g��g o  ������ 0 thenamenick theNameNick��  ��  e  f  ��c o      ���� 0 thenamenick theNameNicka hih r  ��jkj b  ��lml o  ������ 0 	thevalues 	theValuesm J  ��nn o�o o  ���~�~ 0 thenamenick theNameNick�  k o      �}�} 0 	thevalues 	theValuesi pqp l ���|�{�z�|  �{  �z  q rsr r  ��tut n  ��vwv 2 ���y
�y 
az21w o  ���x�x 0 
eachperson 
eachPersonu o      �w�w 0 	theemails 	theEmailss xyx r  ��z{z I ���v|�u
�v .corecnte****       ****| o  ���t�t 0 	theemails 	theEmails�u  { o      �s�s 0 c  y }~} l ���r��r   ( "6,7,8 E-mail Address (1 through 3)   � ��� D 6 , 7 , 8   E - m a i l   A d d r e s s   ( 1   t h r o u g h   3 )~ ��� Y  ����q���p� Z  �����o�� l ����n�m� @  ����� o  ���l�l 0 c  � o  ���k�k 0 x  �n  �m  � k  ���� ��� l ���j���j  � ) #return value of item x of theEmails   � ��� F r e t u r n   v a l u e   o f   i t e m   x   o f   t h e E m a i l s� ��i� r  ����� b  ����� o  ���h�h 0 	thevalues 	theValues� J  ���� ��g� n ����� I  ���f��e�f 0 setvalue setValue� ��d� c  ����� n  ����� 1  ���c
�c 
az17� n  ����� 4  ���b�
�b 
cobj� o  ���a�a 0 x  � o  ���`�` 0 	theemails 	theEmails� m  ���_
�_ 
TEXT�d  �e  �  f  ���g  � o      �^�^ 0 	thevalues 	theValues�i  �o  � r  ����� b  ����� o  ���]�] 0 	thevalues 	theValues� J  ���� ��\� m  ���� ���  �\  � o      �[�[ 0 	thevalues 	theValues�q 0 x  � m  ���Z�Z � m  ���Y�Y �p  � ��� l ���X���X  � b \"Home Phone","Home Fax","Mobile Phone","Business Phone","Business Fax","Pager","Other Phone"   � ��� � " H o m e   P h o n e " , " H o m e   F a x " , " M o b i l e   P h o n e " , " B u s i n e s s   P h o n e " , " B u s i n e s s   F a x " , " P a g e r " , " O t h e r   P h o n e "� ��� r  ���� J  ��� ��� m  ��� ���  h o m e� ��� m  �� ���  h o m e   f a x� ��� m  �� ���  m o b i l e� ��� m  �� ���  w o r k� ��� m  �� ���  w o r k   f a x� ��� m  �� ��� 
 p a g e r� ��W� m  �� ��� 
 o t h e r�W  � o      �V�V &0 thephoneequivlist thePhoneEquivList� ��� r  :��� J  6�� ��� m   �� ���  � ��� m   #�� ���  � ��� m  #&�� ���  � ��� m  &)�� ���  � ��� m  ),�� ���  � ��� m  ,/�� ���  � ��U� m  /2�� ���  �U  � o      �T�T 0 thephonelist thePhoneList� ��� r  ;D��� n  ;@��� 2 <@�S
�S 
az20� o  ;<�R�R 0 
eachperson 
eachPerson� o      �Q�Q 0 	thephones 	thePhones� ��� r  EP��� I EL�P��O
�P .corecnte****       ****� o  EH�N�N 0 	thephones 	thePhones�O  � o      �M�M 0 c  � ��� r  QW� � J  QS�L�L    o      �K�K  0 theextraphones theExtraPhones�  Y  X��J�I k  d�  r  dt	
	 n  dp 1  lp�H
�H 
az18 n  dl 4  gl�G
�G 
cobj o  jk�F�F 0 x   o  dg�E�E 0 	thephones 	thePhones
 o      �D�D 0 thelabel theLabel  r  u� n  u� 1  }��C
�C 
az17 n  u} 4  x}�B
�B 
cobj o  {|�A�A 0 x   o  ux�@�@ 0 	thephones 	thePhones o      �?�? 0 thevalue theValue  Z  ���> E �� o  ���=�= &0 thephoneequivlist thePhoneEquivList o  ���<�< 0 thelabel theLabel Y  �� �;!"�:  Z  ��#$�9�8# =  ��%&% n  ��'(' 4  ���7)
�7 
cobj) o  ���6�6 0 i  ( o  ���5�5 &0 thephoneequivlist thePhoneEquivList& o  ���4�4 0 thelabel theLabel$ k  ��** +,+ r  ��-.- n ��/0/ I  ���31�2�3 0 setvalue setValue1 2�12 o  ���0�0 0 thevalue theValue�1  �2  0  f  ��. n      343 4  ���/5
�/ 
cobj5 o  ���.�. 0 i  4 o  ���-�- 0 thephonelist thePhoneList, 6�,6  S  ���,  �9  �8  �; 0 i  ! m  ���+�+ " I ���*7�)
�* .corecnte****       ****7 o  ���(�( &0 thephoneequivlist thePhoneEquivList�)  �:  �>   r  ��898 b  ��:;: o  ���'�'  0 theextraphones theExtraPhones; l ��<�&�%< c  ��=>= b  ��?@? b  ��ABA o  ���$�$ 0 thevalue theValueB m  ��CC �DD   @ o  ���#�# 0 thelabel theLabel> m  ���"
�" 
TEXT�&  �%  9 o      �!�!  0 theextraphones theExtraPhones E� E l ���FG�  F 3 -return properties of item x of thePhones					   G �HH Z r e t u r n   p r o p e r t i e s   o f   i t e m   x   o f   t h e P h o n e s 	 	 	 	 	�   �J 0 x   m  [\��  o  \_�� 0 c  �I   IJI X  �AK�LK Y  <M�NOPM Z  7QR��Q =  STS n  UVU 4  �W
� 
cobjW o  �� 0 y  V o  �� 0 thephonelist thePhoneListT m  XX �YY  R k  "3ZZ [\[ r  "1]^] n "(_`_ I  #(�a�� 0 setvalue setValuea b�b o  #$�� 0 	eachphone 	eachPhone�  �  `  f  "#^ n      cdc 4  +0�e
� 
cobje o  ./�� 0 y  d o  (+�� 0 thephonelist thePhoneList\ f�f  S  23�  �  �  � 0 y  N l g��g I �h�

� .corecnte****       ****h o  	�	�	 0 thephonelist thePhoneList�
  �  �  O m  �� P m  ����� 0 	eachphone 	eachPhoneL o  ����  0 theextraphones theExtraPhonesJ iji r  BMklk b  BImnm o  BE�� 0 	thevalues 	theValuesn o  EH�� 0 thephonelist thePhoneListl o      �� 0 	thevalues 	theValuesj opo l NN��� �  �  �   p qrq l NN��st��  s U O"Home Street","Home City","Home Postal Code","Home State","Home Country/Region"   t �uu � " H o m e   S t r e e t " , " H o m e   C i t y " , " H o m e   P o s t a l   C o d e " , " H o m e   S t a t e " , " H o m e   C o u n t r y / R e g i o n "r vwv r  Nexyx J  Nazz {|{ m  NQ}} �~~  | � m  QT�� ���  � ��� m  TW�� ���  � ��� m  WZ�� ���  � ���� m  Z]�� ���  ��  y o      ���� $0 thehomeaddresses theHomeAddressesw ��� r  f}��� J  fy�� ��� m  fi�� ���  � ��� m  il�� ���  � ��� m  lo�� ���  � ��� m  or�� ���  � ���� m  ru�� ���  ��  � o      ���� *0 thebusinessadresses theBusinessAdresses� ��� r  ~���� J  ~��� ��� m  ~��� ���  s t r e e t� ��� m  ���� ���  c i t y� ��� m  ���� ���  z i p� ��� m  ���� ��� 
 s t a t e� ���� m  ���� ���  c o u n t r y��  � o      ���� *0 theaddressequivlist theAddressEquivList� ��� r  ����� n  ����� 2 ����
�� 
az27� o  ������ 0 
eachperson 
eachPerson� o      ���� 0 theaddresses  � ��� r  ����� I �������
�� .corecnte****       ****� o  ������ 0 theaddresses  ��  � o      ���� 0 c  � ��� r  ����� J  ������  � o      ���� &0 theextraaddresses theExtraaddresses� ��� Y  ��������� k  ���� ��� l  ��������  � _ Y
				if theCount = 1 then
					return properties of item x of theaddresses
				end if
			   � ��� � 
 	 	 	 	 i f   t h e C o u n t   =   1   t h e n 
 	 	 	 	 	 r e t u r n   p r o p e r t i e s   o f   i t e m   x   o f   t h e a d d r e s s e s 
 	 	 	 	 e n d   i f 
 	 	 	� ��� r  ����� n  ����� 1  ����
�� 
az18� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � o  ������ 0 theaddresses  � o      ���� 0 thelabel theLabel� ���� Z  �������� =  ����� o  ������ 0 thelabel theLabel� m  ���� ���  h o m e� k  �d�� ��� r  ����� n ����� I  ��������� 0 setvalue setValue� ���� n  ����� 1  ����
�� 
az28� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � o  ������ 0 theaddresses  ��  ��  �  f  ��� n      ��� 4  �����
�� 
cobj� m  ������ � o  ������ $0 thehomeaddresses theHomeAddresses� ��� r  ���� n ���� I  ��� ���� 0 setvalue setValue  �� n  � 1  ���
�� 
az29 n  �� 4  ����
�� 
cobj o  ������ 0 x   o  ������ 0 theaddresses  ��  ��  �  f  ��� n       4  	��	
�� 
cobj	 m  ����  o  	���� $0 thehomeaddresses theHomeAddresses� 

 r  * n ! I  !������ 0 setvalue setValue �� n   1  ��
�� 
az31 n   4  ��
�� 
cobj o  ���� 0 x   o  ���� 0 theaddresses  ��  ��    f   n       4  $)��
�� 
cobj m  '(����  o  !$���� $0 thehomeaddresses theHomeAddresses  r  +G n +< I  ,<�� ���� 0 setvalue setValue  !��! n  ,8"#" 1  48��
�� 
az30# n  ,4$%$ 4  /4��&
�� 
cobj& o  23���� 0 x  % o  ,/���� 0 theaddresses  ��  ��    f  +, n      '(' 4  ?F��)
�� 
cobj) m  BE���� ( o  <?���� $0 thehomeaddresses theHomeAddresses *��* r  Hd+,+ n HY-.- I  IY��/���� 0 setvalue setValue/ 0��0 n  IU121 1  QU��
�� 
az322 n  IQ343 4  LQ��5
�� 
cobj5 o  OP���� 0 x  4 o  IL���� 0 theaddresses  ��  ��  .  f  HI, n      676 4  \c��8
�� 
cobj8 m  _b���� 7 o  Y\���� $0 thehomeaddresses theHomeAddresses��  � 9:9 =  gn;<; o  gj���� 0 thelabel theLabel< m  jm== �>>  w o r k: ?��? k  q�@@ ABA r  q�CDC n q�EFE I  r���G���� 0 setvalue setValueG H��H n  r~IJI 1  z~��
�� 
az28J n  rzKLK 4  uz��M
�� 
cobjM o  xy���� 0 x  L o  ru���� 0 theaddresses  ��  ��  F  f  qrD n      NON 4  ����P
�� 
cobjP m  ������ O o  ������ *0 thebusinessadresses theBusinessAdressesB QRQ r  ��STS n ��UVU I  ����W���� 0 setvalue setValueW X��X n  ��YZY 1  ����
�� 
az29Z n  ��[\[ 4  ����]
�� 
cobj] o  ������ 0 x  \ o  ������ 0 theaddresses  ��  ��  V  f  ��T n      ^_^ 4  ����`
�� 
cobj` m  ������ _ o  ������ *0 thebusinessadresses theBusinessAdressesR aba r  ��cdc n ��efe I  ����g���� 0 setvalue setValueg h��h n  ��iji 1  ����
�� 
az31j n  ��klk 4  ����m
�� 
cobjm o  ������ 0 x  l o  ������ 0 theaddresses  ��  ��  f  f  ��d n      non 4  ����p
�� 
cobjp m  ������ o o  ������ *0 thebusinessadresses theBusinessAdressesb qrq r  ��sts n ��uvu I  ����w���� 0 setvalue setValuew x��x n  ��yzy 1  ����
�� 
az30z n  ��{|{ 4  ����}
�� 
cobj} o  ������ 0 x  | o  ������ 0 theaddresses  ��  ��  v  f  ��t n      ~~ 4  �����
�� 
cobj� m  ������  o  ������ *0 thebusinessadresses theBusinessAdressesr ���� r  ����� n ����� I  ��������� 0 setvalue setValue� ���� n  ����� 1  ����
�� 
az32� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � o  ������ 0 theaddresses  ��  ��  �  f  ��� n      ��� 4  ����
� 
cobj� m  ���~�~ � o  ���}�} *0 thebusinessadresses theBusinessAdresses��  ��  ��  ��  �� 0 x  � m  ���|�| � o  ���{�{ 0 c  ��  � ��� r  ��� b  ��� b  ��� o  �z�z 0 	thevalues 	theValues� o  �y�y $0 thehomeaddresses theHomeAddresses� o  �x�x *0 thebusinessadresses theBusinessAdresses� o      �w�w 0 	thevalues 	theValues� ��� l �v�u�t�v  �u  �t  � ��� l �s�r�q�s  �r  �q  � ��� r  !��� n ��� I  �p��o�p 0 list2string  � ��n� o  �m�m 0 	thevalues 	theValues�n  �o  �  f  � o      �l�l 0 theline theLine� ��� r  "1��� b  "-��� b  ")��� o  "%�k�k 0 thedata theData� o  %(�j
�j 
ret � o  ),�i�i 0 theline theLine� o      �h�h 0 thedata theData� ��g� r  2;��� [  27��� o  25�f�f 0 thecount theCount� m  56�e�e � o      �d�d 0 thecount theCount�g  ��  ��  ��  �� 0 
eachperson 
eachPerson � o   � ��c�c 0 	thepeople 	thePeople��   � m   p s���                                                                                  adrb  alis    V  Macintosh HD               ����H+  t<Contacts.app                                                   tR�Ѫ~        ����  	                Applications    ���)      ѪN�    t<  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��  ��  ��   � ��� l FQ��b�a� r  FQ��� b  FM��� o  FI�`�` 0 thedata theData� o  IL�_
�_ 
ret � o      �^�^ 0 thedata theData�b  �a  � ��� l     �]�\�[�]  �\  �[  � ��� l Ry��Z�Y� r  Ry��� I Ru�X�W�
�X .sysonwflfile    ��� null�W  � �V��
�V 
prmt� m  VY�� ��� . S a v e   t h e   e x p o r t e d   d a t a :� �U��
�U 
dfnm� m  \_�� ���  A d d r e s s B o o k . c s v� �T��S
�T 
dflc� l bo��R�Q� e  bo�� I bo�P��
�P .earsffdralis        afdr� m  be�O
�O afdmdesk� �N��M
�N 
from� m  hk�L
�L fldmfldu�M  �R  �Q  �S  � o      �K�K 0 
thecsvfile 
theCSVfile�Z  �Y  � ��� l z���J�I� r  z���� I z��H��
�H .rdwropenshor       file� o  z}�G�G 0 
thecsvfile 
theCSVfile� �F��E
�F 
perm� m  ���D
�D boovtrue�E  � o      �C�C "0 myfilereference myFileReference�J  �I  � ��� l ����B�A� I ���@��
�@ .rdwrseofnull���     ****� o  ���?�? "0 myfilereference myFileReference� �>��=
�> 
set2� m  ���<�<  �=  �B  �A  � ��� l ����;�:� I ���9��
�9 .rdwrwritnull���     ****� o  ���8�8 0 thedata theData� �7��6
�7 
refn� o  ���5�5 "0 myfilereference myFileReference�6  �;  �:  � ��� l ����4�3� I ���2��1
�2 .rdwrclosnull���     ****� o  ���0�0 "0 myfilereference myFileReference�1  �4  �3  � ��� l ����/�.� I ���-�,�+
�- .sysobeepnull��� ��� long�,  �+  �/  �.  � ��� l ����*�)� I ���(��'
�( .sysottosnull���     TEXT� c  ����� b  ����� b  ����� m  ���� ���  W r o t e  � o  ���&�& 0 thecount theCount� m  ���� ���     a d d r e s s   r e c o r d s� m  ���%
�% 
TEXT�'  �*  �)  � ��� i     ��� I      �$��#�$ 0 list2string  � ��"� o      �!�! 0 thelist theList�"  �#  � k     �� � � r      m      �  " , " n      1    � 
�  
txdl 1    �
� 
ascr   r    	
	 c    	 o    �� 0 thelist theList m    �
� 
TEXT
 o      �� 0 theline theLine  r     m     �   n      1    �
� 
txdl 1    �
� 
ascr  r     c     b     b     m     �    " o    �� 0 theline theLine m    !! �""  " m    �
� 
TEXT o      �� 0 theline theLine #�# L    $$ o    �� 0 theline theLine�  � %&% i    '(' I      �)�� 0 setvalue setValue) *�* o      �� 0 theitem theItem�  �  ( k     L++ ,-, Z     I./�0. =     121 o     �� 0 theitem theItem2 m    �
� 
msng/ r    	343 m    55 �66  4 o      �� 0 theitem theItem�  0 k    I77 898 r    :;: l   <��< m    == �>>  "�  �  ; n     ?@? 1    �

�
 
txdl@ 1    �	
�	 
ascr9 ABA r    CDC n    EFE 2    �
� 
citmF o    �� 0 theitem theItemD o      ��  0 searchlistlist searchListlistB GHG r    IJI m    KK �LL  " "J n     MNM 1    �
� 
txdlN 1    �
� 
ascrH OPO r    #QRQ c    !STS l   U��U o    ��  0 searchlistlist searchListlist�  �  T m     � 
�  
TEXTR o      ���� 0 theitem theItemP VWV r   $ )XYX m   $ %ZZ �[[  Y n     \]\ 1   & (��
�� 
txdl] 1   % &��
�� 
ascrW ^_^ r   * /`a` l  * +b����b o   * +��
�� 
ret ��  ��  a n     cdc 1   , .��
�� 
txdld 1   + ,��
�� 
ascr_ efe r   0 5ghg n   0 3iji 2   1 3��
�� 
citmj o   0 1���� 0 theitem theItemh o      ����  0 searchlistlist searchListlistf klk r   6 ;mnm m   6 7oo �pp  ,  n n     qrq 1   8 :��
�� 
txdlr 1   7 8��
�� 
ascrl sts r   < Auvu c   < ?wxw l  < =y����y o   < =����  0 searchlistlist searchListlist��  ��  x m   = >��
�� 
TEXTv o      ���� 0 theitem theItemt z{z r   B G|}| m   B C~~ �  } n     ��� 1   D F��
�� 
txdl� 1   C D��
�� 
ascr{ ���� l  H H��������  ��  ��  ��  - ���� L   J L�� o   J K���� 0 theitem theItem��  & ���� l     ��������  ��  ��  ��       ��������  � �������� 0 list2string  �� 0 setvalue setValue
�� .aevtoappnull  �   � ****� ������������� 0 list2string  �� ����� �  ���� 0 thelist theList��  � ������ 0 thelist theList�� 0 theline theLine� ������!
�� 
ascr
�� 
txdl
�� 
TEXT�� ���,FO��&E�O���,FO�%�%�&E�O�� ��(���������� 0 setvalue setValue�� ����� �  ���� 0 theitem theItem��  � ������ 0 theitem theItem��  0 searchlistlist searchListlist� ��5=������K��Z��o~
�� 
msng
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT
�� 
ret �� M��  �E�Y ?���,FO��-E�O���,FO��&E�O���,FO���,FO��-E�O���,FO��&E�O���,FOPO�� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  y��  ���  ���  ��� ��� ��� ��� ��� ��� ��� ��� �����  ��  ��  � ������������ 0 
eachperson 
eachPerson�� 0 x  �� 0 i  �� 0 	eachphone 	eachPhone�� 0 y  � �      $ ( , 0 4 8 < @ D H L P T X \ ` d h l p t w���������� ��� � � ������������������������������ ������������������������������������������������������������������CX}���������������������������������������=��������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n���m�� �� 0 	thevalues 	theValues�� 0 list2string  �� 0 theline theLine�� 0 thedata theData
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 	theresult 	theResult
�� 
azf4�� 0 	thepeople 	thePeople�� 0 thecount theCount
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
az21�� 0 	theemails 	theEmails�� 0 c  
�� 
bool
�� 
az39�� 0 thetitle theTitle�� 0 setvalue setValue
�� 
azf7�� 0 thenamefirst theNameFirst
�� 
azf8�� 0 thenamelast theNameLast
�� 
az40�� 0 thenamemiddle theNameMiddle
�� 
pnam�� 0 thename theName
�� 
az43�� 0 thenamenick theNameNick
�� 
az17
�� 
TEXT�� �� &0 thephoneequivlist thePhoneEquivList�� 0 thephonelist thePhoneList
�� 
az20�� 0 	thephones 	thePhones��  0 theextraphones theExtraPhones
�� 
az18�� 0 thelabel theLabel�� 0 thevalue theValue�� �� $0 thehomeaddresses theHomeAddresses�� *0 thebusinessadresses theBusinessAdresses�� *0 theaddressequivlist theAddressEquivList
�� 
az27�� 0 theaddresses  �� &0 theextraaddresses theExtraaddresses
�� 
az28
�� 
az29
�� 
az31
�� 
az30
�� 
az32
�� 
ret 
�� 
prmt
� 
dfnm
�~ 
dflc
�} afdmdesk
�| 
from
�{ fldmfldu
�z .earsffdralis        afdr�y 
�x .sysonwflfile    ��� null�w 0 
thecsvfile 
theCSVfile
�v 
perm
�u .rdwropenshor       file�t "0 myfilereference myFileReference
�s 
set2
�r .rdwrseofnull���     ****
�q 
refn
�p .rdwrwritnull���     ****
�o .rdwrclosnull���     ****
�n .sysobeepnull��� ��� long
�m .sysottosnull���     TEXT�������������������a a a a a a a a a a a vE` O)_ k+ E` O_ E` Oa a  a !a "a #mva $ma % &a ',E` (Oa )�*a *-E` +OjE` ,O�_ +[a -a .l /kh  �a 0-E` 1O_ 1j /E` 2O_ (a 3 
 _ 2ja 4&x�a 5,E` 6O)_ 6k+ 7E` 6O_ 6kvE` O�a 8,E` 9O)_ 9k+ 7E` 9O_ _ 9kv%E` O�a :,E` ;O)_ ;k+ 7E` ;O_ _ ;kv%E` O�a <,E` =O)_ =k+ 7E` =O_ _ =kv%E` O�a >,E` ?O)_ ?k+ 7E` ?O_ _ ?kv%E` O�a @,E` AO)_ Ak+ 7E` AO_ _ Akv%E` O�a 0-E` 1O_ 1j /E` 2O Ekmkh _ 2� $_ )_ 1a .�/a B,a C&k+ 7kv%E` Y _ a Dkv%E` [OY��Oa Ea Fa Ga Ha Ia Ja Ka LvE` MOa Na Oa Pa Qa Ra Sa Ta LvE` UO�a V-E` WO_ Wj /E` 2OjvE` XO �k_ 2kh _ Wa .�/a Y,E` ZO_ Wa .�/a B,E` [O_ M_ Z @ :k_ Mj /kh _ Ma .�/_ Z  )_ [k+ 7_ Ua .�/FOY h[OY��Y _ X_ [a \%_ Z%a C&%E` XOP[OY�wO S_ X[a -a .l /kh  8_ Uj /kih _ Ua .�/a ]  )�k+ 7_ Ua .�/FOY h[OY��[OY��O_ _ U%E` Oa ^a _a `a aa ba cvE` dOa ea fa ga ha ia cvE` jOa ka la ma na oa cvE` pO�a q-E` rO_ rj /E` 2OjvE` sOPk_ 2kh _ ra .�/a Y,E` ZO_ Za t  �)_ ra .�/a u,k+ 7_ da .k/FO)_ ra .�/a v,k+ 7_ da .l/FO)_ ra .�/a w,k+ 7_ da .m/FO)_ ra .�/a x,k+ 7_ da .a %/FO)_ ra .�/a y,k+ 7_ da .a c/FY �_ Za z  �)_ ra .�/a u,k+ 7_ ja .k/FO)_ ra .�/a v,k+ 7_ ja .l/FO)_ ra .�/a w,k+ 7_ ja .m/FO)_ ra .�/a x,k+ 7_ ja .a %/FO)_ ra .�/a y,k+ 7_ ja .a c/FY h[OY��O_ _ d%_ j%E` O)_ k+ E` O_ _ {%_ %E` O_ ,kE` ,Y h[OY�WUO_ _ {%E` O*a |a }a ~a a �a �a �a �l �a � �E` �O_ �a �el �E` �O_ �a �jl �O_ a �_ �l �O_ �j �O*j �Oa �_ ,%a �%a C&j � ascr  ��ޭ