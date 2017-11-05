FasdUAS 1.101.10   ��   ��    k             l     ��  ��    @ : Fusion Script Terminal With File Dialog v1.1 - 2017-11-05     � 	 	 t   F u s i o n   S c r i p t   T e r m i n a l   W i t h   F i l e   D i a l o g   v 1 . 1   -   2 0 1 7 - 1 1 - 0 5   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script shows a file dialog that lets you open a Lua or Python interactive shell session via Fusion Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  n   T h i s   s c r i p t   s h o w s   a   f i l e   d i a l o g   t h a t   l e t s   y o u   o p e n   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.     �  �   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t .     !   l     �� " #��   " � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    # � $ $L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 1 + Choose a hostname for the FuScript session    / � 0 0 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n -  1 2 1 l     3���� 3 r      4 5 4 m      6 6 � 7 7  l o c a l h o s t 5 o      ���� $0 fuscripthostname fuscriptHostname��  ��   2  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < 5 / Choose where the FuScript program is installed    = � > > ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d ;  ? @ ? l    A���� A r     B C B n    	 D E D 1    	��
�� 
strq E n     F G F 1    ��
�� 
psxp G m     H H � I I � / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t C o      ���� 0 fuscriptpath fuscriptPath��  ��   @  J K J l    L���� L r     M N M n     O P O 1    ��
�� 
strq P n     Q R Q 1    ��
�� 
psxp R m     S S � T T X / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p N o      ���� 0 
fusionpath 
fusionPath��  ��   K  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app/Contents/MacOS/fuscript"    Z � [ [ �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " X  \ ] \ l     �� ^ _��   ^ d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app"    _ � ` ` �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p " ]  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e   Add a space character    f � g g ,   A d d   a   s p a c e   c h a r a c t e r d  h i h l    j���� j r     k l k m     m m � n n    l 1      ��
�� 
spac��  ��   i  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s   Select a file on disk    t � u u ,   S e l e c t   a   f i l e   o n   d i s k r  v w v l    x���� x r     y z y l    {���� { l    |���� | I   ������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��   z o      ���� 0 selectedfile selectedFile��  ��   w  } ~ } l     ��������  ��  ��   ~   �  l   / ����� � O    / � � � k   $. � �  � � � l  $ $�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   $ J � � � l  $ 3 ����� � n   $ 3 � � � J   ( 3 � �  � � � 1   ) +��
�� 
asty �  ��� � 1   - /��
�� 
nmxt��   � 4   $ (�� �
�� 
file � o   & '���� 0 selectedfile selectedFile��  ��   � J       � �  � � � o      ���� 0 filetype fileType �  ��� � o      ���� 0 fileextension fileExtension��   �  � � � l  K K��������  ��  ��   �  � � � l  K K�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   K X � � � b   K T � � � b   K P � � � m   K N � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   N O���� $0 fuscripthostname fuscriptHostname � m   P S � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   Y f � � � b   Y b � � � b   Y ^ � � � m   Y \ � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   \ ]���� $0 fuscripthostname fuscriptHostname � m   ^ a � � � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ' � o      ���� 0 	luascript 	luaScript �  � � � l  g g��������  ��  ��   �  � � � l  g g�� � ���   � 7 1 Check if this is a Lua script or a Python script    � � � � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �  ��� � Z   g. � � � � � l  g n ����� � =  g n � � � o   g j���� 0 fileextension fileExtension � m   j m � � � � �  p y��  ��   � k   q � � �  � � � l  q q�� � ���   � O I Run Python Scripts (You can manually force this to either Python 2 or 3)    � � � � �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 ) �  � � � r   q x � � � m   q t � � � � �  p y 2 � o      ���� 0 
fulanguage 
fuLanguage �  � � � l  y y�� � ���   �   set fuLanguage to "py3"    � � � � 0   s e t   f u L a n g u a g e   t o   " p y 3 " �  ��� � r   y � � � � o   y |���� 0 pyscript pyScript � o      ���� "0 fuscriptoptions fuscriptOptions��   �  � � � l  � � ����� � =  � � � � � o   � ����� 0 fileextension fileExtension � m   � � � � � � �  p y 2��  ��   �  � � � k   � � � �  � � � l  � ��� � ���   �   Run Python 2 Scripts    � � � � *   R u n   P y t h o n   2   S c r i p t s �  � � � r   � � � � � m   � � � � � � �  - p y 2 � o      ���� 0 
fulanguage 
fuLanguage �  ��� � r   � � � � � o   � ����� 0 pyscript pyScript � o      ���� "0 fuscriptoptions fuscriptOptions��   �  � � � l  � � ����� � =  � � � � � o   � ����� 0 fileextension fileExtension � m   � � � � � � �  p y 3��  ��   �  � � � k   � � � �    l  � �����     Run Python 3 Scripts    � *   R u n   P y t h o n   3   S c r i p t s  r   � � m   � �		 �

  p y 3 o      ���� 0 
fulanguage 
fuLanguage �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��   �  l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � � �  l u a��  ��    k   � �  l  � �����     Run Lua scripts    �     R u n   L u a   s c r i p t s  r   � �  m   � �!! �""  l u a  o      ���� 0 
fulanguage 
fuLanguage #��# r   � �$%$ o   � ����� 0 	luascript 	luaScript% o      ���� "0 fuscriptoptions fuscriptOptions��   &'& l  � �(����( =  � �)*) o   � ����� 0 fileextension fileExtension* m   � �++ �,,  e y e o n s c r i p t��  ��  ' -.- k   � �// 010 l  � ���23��  2   Run Lua scripts   3 �44     R u n   L u a   s c r i p t s1 565 r   � �787 m   � �99 �::  l u a8 o      ���� 0 
fulanguage 
fuLanguage6 ;��; r   � �<=< o   � ����� 0 	luascript 	luaScript= o      ���� "0 fuscriptoptions fuscriptOptions��  . >?> l  � �@��~@ =  � �ABA o   � ��}�} 0 fileextension fileExtensionB m   � �CC �DD  c o m p�  �~  ? E�|E k   �FF GHG l  � ��{IJ�{  I   Open the comp   J �KK    O p e n   t h e   c o m pH LML r   �NON b   �PQP b   �RSR b   �TUT b   �VWV m   � XX �YY  o p e n   - aW 1   �z
�z 
spacU o  �y�y 0 
fusionpath 
fusionPathS 1  �x
�x 
spacQ l Z�w�vZ n  [\[ 1  	�u
�u 
strq\ l 	]�t�s] n  	^_^ 1  	�r
�r 
psxp_ o  �q�q 0 selectedfile selectedFile�t  �s  �w  �v  O o      �p�p 0 command  M `a` l �obc�o  b   display alert command   c �dd ,   d i s p l a y   a l e r t   c o m m a n da efe r  ghg I �ni�m
�n .sysoexecTEXT���     TEXTi o  �l�l 0 command  �m  h 1      �k
�k 
rsltf jkj l �jlm�j  l   display alert result   m �nn *   d i s p l a y   a l e r t   r e s u l tk o�io L  �h�h  �i  �|   � k  ".pp qrq I ")�gs�f
�g .sysodisAaleR        TEXTs m  "%tt �uu x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�f  r v�ev L  *.ww m  *-xx �yy � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�e  ��   � m     !zz�                                                                                  MACS  alis    b  PineHD                     ��L�H+   ��
Finder.app                                                      (UԿ�        ����  	                CoreServices    ��v�      ԿD     �� �� ��  0PineHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � {|{ l     �d�c�b�d  �c  �b  | }~} l     �a��a      Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t~ ��� l 0=��`�_� r  0=��� b  09��� b  05��� m  03�� ���  - l� 1  34�^
�^ 
spac� o  58�]�] 0 
fulanguage 
fuLanguage� o      �\�\ &0 fulanguageoptions fuLanguageOptions�`  �_  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� l     �X���X  � ) # Add the interactive shell argument   � ��� F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t� ��� l >E��W�V� r  >E��� m  >A�� ���  - i� o      �U�U 0 fuinteractive fuInteractive�W  �V  � ��� l     �T���T  �   set fuInteractive to ""   � ��� 0   s e t   f u I n t e r a c t i v e   t o   " "� ��� l     �S�R�Q�S  �R  �Q  � ��� l     �P���P  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� l Fe��O�N� r  Fe��� b  Fa��� b  F[��� b  FY��� b  FU��� b  FS��� b  FO��� b  FM��� b  FI��� o  FG�M�M 0 fuscriptpath fuscriptPath� 1  GH�L
�L 
spac� o  IL�K�K &0 fulanguageoptions fuLanguageOptions� 1  MN�J
�J 
spac� o  OR�I�I 0 fuinteractive fuInteractive� 1  ST�H
�H 
spac� o  UX�G�G "0 fuscriptoptions fuscriptOptions� 1  YZ�F
�F 
spac� l [`��E�D� n  [`��� 1  ^`�C
�C 
strq� l [^��B�A� n  [^��� 1  \^�@
�@ 
psxp� o  [\�?�? 0 selectedfile selectedFile�B  �A  �E  �D  � o      �>�> 0 command  �O  �N  � ��� l fr��=�<� O fr��� I lq�;�:�9
�; .miscactvnull��� ��� null�:  �9  � m  fi���                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �=  �<  � ��� l s���8�7� O s���� I y��6��5
�6 .coredoscnull��� ��� ctxt� o  y|�4�4 0 command  �5  � m  sv���                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �8  �7  � ��3� l     �2�1�0�2  �1  �0  �3       �/���/  � �.
�. .aevtoappnull  �   � ****� �-��,�+���*
�- .aevtoappnull  �   � ****� k    ���  1��  ?��  J��  h��  v��  �� ��� ��� ��� ��� ��)�)  �,  �+  �  � 4 6�( H�'�&�% S�$ m�#�"�!z� ����� � �� � �� � ��� � � �	!+9CX���t�x��������( $0 fuscripthostname fuscriptHostname
�' 
psxp
�& 
strq�% 0 fuscriptpath fuscriptPath�$ 0 
fusionpath 
fusionPath
�# 
spac
�" .sysostdfalis    ��� null�! 0 selectedfile selectedFile
�  
file
� 
asty
� 
nmxt
� 
cobj� 0 filetype fileType� 0 fileextension fileExtension� 0 pyscript pyScript� 0 	luascript 	luaScript� 0 
fulanguage 
fuLanguage� "0 fuscriptoptions fuscriptOptions� 0 command  
� .sysoexecTEXT���     TEXT
� 
rslt
� .sysodisAaleR        TEXT� &0 fulanguageoptions fuLanguageOptions� 0 fuinteractive fuInteractive
� .miscactvnull��� ��� null
� .coredoscnull��� ��� ctxt�*��E�O��,�,E�O��,�,E�O�E�O*j 
E�O�*��/[�,\[�,\ZlvE[a k/E` Z[a l/E` ZOa �%a %E` Oa �%a %E` O_ a   a E` O_ E` Y �_ a   a E` O_ E` Y �_ a   a  E` O_ E` Y u_ a !  a "E` O_ E` Y Y_ a #  a $E` O_ E` Y =_ a %  'a &�%�%�%��,�,%E` 'O_ 'j (E` )OhY a *j +Oa ,UOa -�%_ %E` .Oa /E` 0O��%_ .%�%_ 0%�%_ %�%��,�,%E` 'Oa 1 *j 2UOa 1 	_ 'j 3Uascr  ��ޭ