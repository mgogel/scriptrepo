FasdUAS 1.101.10   ��   ��    k             l     �� ��    "  Remove Emails for Label 1.0       	  l     �� 
��   
 + % By Trevor Harmon <trevor@vocaro.com>    	     l     �� ��    : 4 License: GPL - http://www.gnu.org/copyleft/gpl.html         l     ������  ��        l      �� ��    � �
This script will walk through every *selected* contact in the Address Book and remove any email address whose label matches the name specified by the user when the script runs.
         l     ������  ��        l     ��  I    �� ��
�� .sysodlogaskr        TEXT  b         b         b         m        k eWarning: This script is designed to remove data! Be sure to back up your Address Book database first!     o    ��
�� 
ret   o    ��
�� 
ret   m         $ Do you still want to continue?   ��  ��     ! " ! l     ������  ��   "  # $ # l    %�� % r     & ' & I   �� ( )
�� .sysodlogaskr        TEXT ( m     * * � }This script will remove from all selected contacts any email addresses for a given field. Enter the name of that field below:    ) �� +��
�� 
dtxt + m     , ,  Email   ��   ' 1      ��
�� 
rslt��   $  - . - l     ������  ��   .  / 0 / l    1�� 1 r     2 3 2 l    4�� 4 n     5 6 5 1    ��
�� 
ttxt 6 1    ��
�� 
rslt��   3 o      ���� 0 	the_label  ��   0  7 8 7 l     ������  ��   8  9 : 9 l   ! ;�� ; I   !�� <��
�� .sysodlogaskr        TEXT < m     = = � �This process can take several minutes to complete, depending on the number of Address Book contacts you have selected and the speed of your computer.   ��  ��   :  > ? > l     ������  ��   ?  @ A @ l  " � B�� B O   " � C D C k   & � E E  F G F l  & &������  ��   G  H I H r   & ) J K J m   & '����   K o      ���� 0 emails_removed   I  L M L X   * � N�� O N k   = � P P  Q R Q r   = C S T S J   = ?����   T o      ���� 0 emails_to_remove   R  U V U X   D x W�� X W Z   X s Y Z���� Y =  X _ [ \ [ l  X ] ]�� ] n   X ] ^ _ ^ 1   Y ]��
�� 
az18 _ o   X Y���� 0 
this_email  ��   \ o   ] ^���� 0 	the_label   Z r   b o ` a ` b   b k b c b o   b e���� 0 emails_to_remove   c l  e j d�� d n   e j e f e 1   f j��
�� 
ID   f o   e f���� 0 
this_email  ��   a o      ���� 0 emails_to_remove  ��  ��  �� 0 
this_email   X n   G L g h g 2   H L��
�� 
az21 h o   G H���� 0 this_person   V  i�� i X   y � j�� k j k   � � l l  m n m I  � ��� o��
�� .coredelonull���     obj  o l  � � p�� p 6  � � q r q n   � � s t s 2  � ���
�� 
az21 t o   � ����� 0 this_person   r =  � � u v u 1   � ���
�� 
ID   v o   � ����� 0 email_id  ��  ��   n  w�� w r   � � x y x [   � � z { z o   � ����� 0 emails_removed   { m   � �����  y o      ���� 0 emails_removed  ��  �� 0 email_id   k o   | ���� 0 emails_to_remove  ��  �� 0 this_person   O l  - 1 |�� | e   - 1 } } 1   - 1��
�� 
az48��   M  ~  ~ l  � �������  ��     � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � �  Removed     � o   � ����� 0 emails_removed   � m   � � � �   email addresses.   ��   �  ��� � l  � �������  ��  ��   D m   " # � ��null     ߀��  fAddress Book.app �\=     ��؀   @   )       �(�[i���ذ�adrb   alis    ^  
Hard drive                 ��ǃH+    fAddress Book.app                                                �a��l�2        ����  	                Applications    ��)�      �m=�      f  (Hard drive:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p   
 H a r d   d r i v e  Applications/Address Book.app   / ��  ��   A  ��� � l     ������  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  # � �  / � �  9 � �  @����  ��  ��   � �������� 0 this_person  �� 0 
this_email  �� 0 email_id   �  ��  �� *�� ,������ = ������������������� ��� � �
�� 
ret 
�� .sysodlogaskr        TEXT
�� 
dtxt
�� 
rslt
�� 
ttxt�� 0 	the_label  �� 0 emails_removed  
�� 
az48
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 emails_to_remove  
�� 
az21
�� 
az18
�� 
ID   �  
�� .coredelonull���     obj �� ���%�%�%j O���l E�O��,E�O�j O� �jE�O �*�,E[��l kh  jvE` O 3�a -[��l kh �a ,�  _ �a ,%E` Y h[OY��O 2_ [��l kh �a -a [a ,\Z�81j O�kE�[OY��[OY��Oa �%a %j OPUascr  ��ޭ