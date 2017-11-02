FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / ) Fusion Script Terminal v1.0 - 2017-11-02     � 	 	 R   F u s i o n   S c r i p t   T e r m i n a l   v 1 . 0   -   2 0 1 7 - 1 1 - 0 2   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script grabs the foreground document from BBEdit and sends it to a Lua or Python interactive shell session via Fusion Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  �   T h i s   s c r i p t   g r a b s   t h e   f o r e g r o u n d   d o c u m e n t   f r o m   B B E d i t   a n d   s e n d s   i t   t o   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.     �  �   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t .     !   l     �� " #��   " � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    # � $ $L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 1 + Choose a hostname for the FuScript session    / � 0 0 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n -  1 2 1 l     3���� 3 r      4 5 4 m      6 6 � 7 7  l o c a l h o s t 5 o      ���� $0 fuscripthostname fuscriptHostname��  ��   2  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < 5 / Choose where the FuScript program is installed    = � > > ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d ;  ? @ ? l    A���� A r     B C B n    	 D E D 1    	��
�� 
strq E n     F G F 1    ��
�� 
psxp G m     H H � I I � / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t C o      ���� 0 fuscriptpath fuscriptPath��  ��   @  J K J l    L���� L r     M N M n     O P O 1    ��
�� 
strq P n     Q R Q 1    ��
�� 
psxp R m     S S � T T X / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p N o      ���� 0 
fusionpath 
fusionPath��  ��   K  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app/Contents/MacOS/fuscript"    Z � [ [ �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " X  \ ] \ l     �� ^ _��   ^ d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app"    _ � ` ` �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p " ]  a b a l     �� c d��   c   Add a space character    d � e e ,   A d d   a   s p a c e   c h a r a c t e r b  f g f l    h���� h r     i j i m     k k � l l    j 1      ��
�� 
spac��  ��   g  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ' ! Get the current BBEdit file name    r � s s B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e p  t u t l   [ v���� v O    [ w x w k    Z y y  z { z l   �� | }��   | &   tell application "TextWrangler"    } � ~ ~ @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " {  ��  Q    Z � � � � r    ( � � � e    & � � n    & � � � m   # %��
�� 
file � 4   #�� �
�� 
docu � m   ! "����  � o      ���� 0 selectedfile selectedFile � R      ������
�� .ascrerr ****      � ****��  ��   � k   0 Z � �  � � � r   0 7 � � � m   0 3 � � � � � � Y o u   n e e d   t o   h a v e   a   . l u a   o r   . e y e o n s c r i p t   f i l e   o p e n   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! � o      ���� 0 errormessage errorMessage �  � � � I  8 W�� � �
�� .sysodlogaskr        TEXT � l  8 ; ����� � o   8 ;���� 0 errormessage errorMessage��  ��   � �� � �
�� 
btns � J   > C � �  ��� � m   > A � � � � �  O K��   � �� � �
�� 
dflt � m   F G����  � �� � �
�� 
disp � m   J K����  � �� ���
�� 
givu � m   N Q���� 
��   �  ��� � L   X Z����  ��  ��   x m     � ��                                                                                  R*ch  alis    <  PineHD                     ��L�H+   �
BBEdit.app                                                      0��ݤ�        ����  	                Applications    ��v�      ��λ     �  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Add a space character    � � � � ,   A d d   a   s p a c e   c h a r a c t e r �  � � � l  \ a ����� � r   \ a � � � m   \ _ � � � � �    � 1      ��
�� 
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  bw ����� � O   bw � � � k   hv � �  � � � l  h h�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   h � � � � l  h { ����� � n   h { � � � J   l { � �  � � � 1   m q��
�� 
asty �  ��� � 1   s w��
�� 
nmxt��   � 4   h l�� �
�� 
file � o   j k���� 0 selectedfile selectedFile��  ��   � J       � �  � � � o      ���� 0 filetype fileType �  ��� � o      ���� 0 fileextension fileExtension��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � � � " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) ' � o      ���� 0 	luascript 	luaScript �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 7 1 Check if this is a Lua script or a Python script    � � � � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �  ��� � Z   �v � � � � � l  � � ����� � =  � � � � � o   � ����� 0 fileextension fileExtension � m   � �   �  p y��  ��   � k   � �  l  � �����   O I Run Python Scripts (You can manually force this to either Python 2 or 3)    � �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 ) 	 r   � �

 m   � � �  p y 2 o      ���� 0 
fulanguage 
fuLanguage	  l  � �����     set fuLanguage to "py3"    � 0   s e t   f u L a n g u a g e   t o   " p y 3 " �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��   �  l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � � �  p y 2��  ��    k   � �  !  l  � ���"#��  "   Run Python 2 Scripts   # �$$ *   R u n   P y t h o n   2   S c r i p t s! %&% r   � �'(' m   � �)) �**  - p y 2( o      ���� 0 
fulanguage 
fuLanguage& +��+ r   � �,-, o   � ����� 0 pyscript pyScript- o      ���� "0 fuscriptoptions fuscriptOptions��   ./. l  � �0����0 =  � �121 o   � ��� 0 fileextension fileExtension2 m   � �33 �44  p y 3��  ��  / 565 k   � 77 898 l  � ��~:;�~  :   Run Python 3 Scripts   ; �<< *   R u n   P y t h o n   3   S c r i p t s9 =>= r   � �?@? m   � �AA �BB  p y 3@ o      �}�} 0 
fulanguage 
fuLanguage> C�|C r   � DED o   � ��{�{ 0 pyscript pyScriptE o      �z�z "0 fuscriptoptions fuscriptOptions�|  6 FGF l 
H�y�xH = 
IJI o  �w�w 0 fileextension fileExtensionJ m  	KK �LL  l u a�y  �x  G MNM k  OO PQP l �vRS�v  R   Run Lua scripts   S �TT     R u n   L u a   s c r i p t sQ UVU r  WXW m  YY �ZZ  l u aX o      �u�u 0 
fulanguage 
fuLanguageV [�t[ r  \]\ o  �s�s 0 	luascript 	luaScript] o      �r�r "0 fuscriptoptions fuscriptOptions�t  N ^_^ l &`�q�p` = &aba o  "�o�o 0 fileextension fileExtensionb m  "%cc �dd  e y e o n s c r i p t�q  �p  _ efe k  )8gg hih l ))�njk�n  j   Run Lua scripts   k �ll     R u n   L u a   s c r i p t si mnm r  )0opo m  ),qq �rr  l u ap o      �m�m 0 
fulanguage 
fuLanguagen s�ls r  18tut o  14�k�k 0 	luascript 	luaScriptu o      �j�j "0 fuscriptoptions fuscriptOptions�l  f vwv l ;Bx�i�hx = ;Byzy o  ;>�g�g 0 fileextension fileExtensionz m  >A{{ �||  c o m p�i  �h  w }�f} k  Eg~~ � l EE�e���e  �   Open the comp   � ���    O p e n   t h e   c o m p� ��� r  EX��� b  ET��� b  EN��� b  EL��� b  EJ��� m  EH�� ���  o p e n   - a� 1  HI�d
�d 
spac� o  JK�c�c 0 
fusionpath 
fusionPath� 1  LM�b
�b 
spac� l NS��a�`� n  NS��� 1  QS�_
�_ 
strq� l NQ��^�]� n  NQ��� 1  OQ�\
�\ 
psxp� o  NO�[�[ 0 selectedfile selectedFile�^  �]  �a  �`  � o      �Z�Z 0 command  � ��� l YY�Y���Y  �   display alert command   � ��� ,   d i s p l a y   a l e r t   c o m m a n d� ��� r  Yd��� I Y`�X��W
�X .sysoexecTEXT���     TEXT� o  Y\�V�V 0 command  �W  � 1      �U
�U 
rslt� ��� l ee�T���T  �   display alert result   � ��� *   d i s p l a y   a l e r t   r e s u l t� ��S� L  eg�R�R  �S  �f   � k  jv�� ��� I jq�Q��P
�Q .sysodisAaleR        TEXT� m  jm�� ��� x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�P  � ��O� L  rv�� m  ru�� ��� � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�O  ��   � m   b e���                                                                                  MACS  alis    b  PineHD                     ��L�H+   ��
Finder.app                                                      (UԿ�        ����  	                CoreServices    ��v�      ԿD     �� �� ��  0PineHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � ��� l     �N�M�L�N  �M  �L  � ��� l     �K���K  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� l x���J�I� r  x���� b  x���� b  x}��� m  x{�� ���  - l� 1  {|�H
�H 
spac� o  }��G�G 0 
fulanguage 
fuLanguage� o      �F�F &0 fulanguageoptions fuLanguageOptions�J  �I  � ��� l     �E�D�C�E  �D  �C  � ��� l     �B���B  � ) # Add the interactive shell argument   � ��� F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t� ��� l ����A�@� r  ����� m  ���� ���  - i� o      �?�? 0 fuinteractive fuInteractive�A  �@  � ��� l     �>���>  �   set fuInteractive to ""   � ��� 0   s e t   f u I n t e r a c t i v e   t o   " "� ��� l     �=�<�;�=  �<  �;  � ��� l     �:���:  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� l ����9�8� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���7�7 0 fuscriptpath fuscriptPath� 1  ���6
�6 
spac� o  ���5�5 &0 fulanguageoptions fuLanguageOptions� 1  ���4
�4 
spac� o  ���3�3 0 fuinteractive fuInteractive� 1  ���2
�2 
spac� o  ���1�1 "0 fuscriptoptions fuscriptOptions� 1  ���0
�0 
spac� l ����/�.� n  ����� 1  ���-
�- 
strq� l ����,�+� n  ����� 1  ���*
�* 
psxp� o  ���)�) 0 selectedfile selectedFile�,  �+  �/  �.  � o      �(�( 0 command  �9  �8  � ��� l     �'�&�%�'  �&  �%  � ��� l ����$�#� O ��� � I ���"�!� 
�" .miscactvnull��� ��� null�!  �     m  ���                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �$  �#  �  l ���� O �� I ����
� .coredoscnull��� ��� ctxt o  ���� 0 command  �   m  ���                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �  �   	�	 l     ����  �  �  �       �
 6 ��Y���  
 ����������
�	�����
� .aevtoappnull  �   � ****� $0 fuscripthostname fuscriptHostname� 0 fuscriptpath fuscriptPath� 0 
fusionpath 
fusionPath
� 
spac� 0 selectedfile selectedFile� 0 filetype fileType� 0 fileextension fileExtension� 0 pyscript pyScript�
 0 	luascript 	luaScript�	 0 
fulanguage 
fuLanguage� "0 fuscriptoptions fuscriptOptions� &0 fulanguageoptions fuLanguageOptions� 0 fuinteractive fuInteractive� 0 command  �   ���� 
� .aevtoappnull  �   � **** k    �  1  ?  J  f  t  �  � � �   �!! �"" ����  �  �     B 6�� H������ S�� k�� ����������� ����� ������������� ������������ � ��� � ��� ����)3AKYcq{����������������������� $0 fuscripthostname fuscriptHostname
�� 
psxp
�� 
strq�� 0 fuscriptpath fuscriptPath�� 0 
fusionpath 
fusionPath
�� 
spac
�� 
docu
�� 
file�� 0 selectedfile selectedFile��  ��  �� 0 errormessage errorMessage
�� 
btns
�� 
dflt
�� 
disp
�� 
givu�� 
�� 
�� .sysodlogaskr        TEXT
�� 
asty
�� 
nmxt
�� 
cobj�� 0 filetype fileType�� 0 fileextension fileExtension�� 0 pyscript pyScript�� 0 	luascript 	luaScript�� 0 
fulanguage 
fuLanguage�� "0 fuscriptoptions fuscriptOptions�� 0 command  
�� .sysoexecTEXT���     TEXT
�� 
rslt
�� .sysodisAaleR        TEXT�� &0 fulanguageoptions fuLanguageOptions�� 0 fuinteractive fuInteractive
�� .miscactvnull��� ��� null
�� .coredoscnull��� ��� ctxt� ��E�O��,�,E�O��,�,E�O�E�O� @ *�k/�,EE�W 1X  a E` O_ a a kva ka ka a a  OhUOa E�Oa *��/[a ,\[a ,\ZlvE[a k/E` Z[a l/E`  ZOa !�%a "%E` #Oa $�%a %%E` &O_  a '  a (E` )O_ #E` *Y �_  a +  a ,E` )O_ #E` *Y �_  a -  a .E` )O_ #E` *Y u_  a /  a 0E` )O_ &E` *Y Y_  a 1  a 2E` )O_ &E` *Y =_  a 3  'a 4�%�%�%��,�,%E` 5O_ 5j 6E` 7OhY a 8j 9Oa :UOa ;�%_ )%E` <Oa =E` >O��%_ <%�%_ >%�%_ *%�%��,�,%E` 5Oa ? *j @UOa ? 	_ 5j AU �## � ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t ' �$$ \ ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p ' �furlfile:///Users/andrew/Desktop/2017-11-02%20FuScript%20Integration%20for%20BBEdit%20on%20MacOS/Release/FuScript%20Integration%20for%20BBEdit%20on%20MacOS/Script%20Examples/getattrs.lua
� 
msng �%%  l u a �&&F - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' �'' - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) ' �((  - l   l u a �))� ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t '   - l   l u a   - i   - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) '   ' / U s e r s / a n d r e w / D e s k t o p / 2 0 1 7 - 1 1 - 0 2   F u S c r i p t   I n t e g r a t i o n   f o r   B B E d i t   o n   M a c O S / R e l e a s e / F u S c r i p t   I n t e g r a t i o n   f o r   B B E d i t   o n   M a c O S / S c r i p t   E x a m p l e s / g e t a t t r s . l u a '�   ascr  ��ޭ