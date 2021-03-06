FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ? 9 Fusion Script Terminal Interactive Shell v2 - 2018-09-04     � 	 	 r   F u s i o n   S c r i p t   T e r m i n a l   I n t e r a c t i v e   S h e l l   v 2   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script opens a Lua or Python interactive shell session using Fusion Studio + FuScript.If you don't select a script language in the dialog after 8 seconds Lua will be chosen as the default option.     �  �   T h i s   s c r i p t   o p e n s   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   u s i n g   F u s i o n   S t u d i o   +   F u S c r i p t . I f   y o u   d o n ' t   s e l e c t   a   s c r i p t   l a n g u a g e   i n   t h e   d i a l o g   a f t e r   8   s e c o n d s   L u a   w i l l   b e   c h o s e n   a s   t h e   d e f a u l t   o p t i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l    F���� F r     G H G n    	 I J I 1    	��
�� 
strq J n     K L K 1    ��
�� 
psxp L m     M M � N N � / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t H o      ���� 0 fuscriptpath fuscriptPath��  ��   E  O P O l    Q���� Q r     R S R n     T U T 1    ��
�� 
strq U n     V W V 1    ��
�� 
psxp W m     X X � Y Y X / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p S o      ���� 0 
fusionpath 
fusionPath��  ��   P  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app/Contents/MacOS/fuscript"    _ � ` ` �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " ]  a b a l     �� c d��   c d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app"    d � e e �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p " b  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   Add a space character    k � l l ,   A d d   a   s p a c e   c h a r a c t e r i  m n m l    o���� o r     p q p m     r r � s s    q 1      ��
�� 
spac��  ��   n  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x ) # Add the interactive shell argument    y � z z F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t w  { | { l    }���� } r     ~  ~ m     � � � � �  - i  o      ���� 0 fuinteractive fuInteractive��  ��   |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + % Ask If you want to run Python or Lua    � � � � J   A s k   I f   y o u   w a n t   t o   r u n   P y t h o n   o r   L u a �  � � � l   ? ����� � r    ? � � � l   ; ����� � I   ;�� � �
�� .sysodlogaskr        TEXT � m     � � � � � t W h a t   S c r i p t i n g   l a n g u a g e   d o   y o u   w a n t   t o   u s e   w i t h   F u S c r i p t ?   � �� � �
�� 
disp � m    ��
�� stic    � �� � �
�� 
btns � J     + � �  � � � m     # � � � � �  P y t h o n   2 �  � � � m   # & � � � � �  P y t h o n   3 �  ��� � m   & ) � � � � �  L u a��   � �� � �
�� 
dflt � m   . /����  � �� ���
�� 
givu � m   2 5���� ��  ��  ��   � o      ���� 0 dialogresult dialogResult��  ��   �  � � � l  @ w ����� � Z   @ w � � � � � =  @ K � � � n   @ G � � � 1   C G��
�� 
bhit � 1   @ C��
�� 
rslt � m   G J � � � � �  P y t h o n   2 � r   N U � � � m   N Q � � � � �  p y 2 � o      ���� 0 fileextension fileExtension �  � � � =  X c � � � n   X _ � � � 1   [ _��
�� 
bhit � 1   X [��
�� 
rslt � m   _ b � � � � �  P y t h o n   3 �  ��� � r   f m � � � m   f i � � � � �  p y 3 � o      ���� 0 fileextension fileExtension��   � r   p w � � � m   p s � � � � �  l u a � o      ���� 0 fileextension fileExtension��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  x� ����� � O   x� � � � k   ~� � �  � � � l  ~ ~�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   ~ � � � � b   ~ � � � � b   ~ � � � � m   ~ � � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d � o      ���� 0 	luascript 	luaScript �  � � � r   � � � � � b   � � � � � 1   � ���
�� 
spac � m   � � � � � � �  ' � o      ����  0 luascriptclose luaScriptClose �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 7 1 Check if this is a Lua script or a Python script    � �   b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t � �� Z   �� l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � �		 �

  p y��  ��   k   � �  l  � �����   O I Run Python Scripts (You can manually force this to either Python 2 or 3)    � �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 )  r   � � m   � � �  p y 2 o      ���� 0 
fulanguage 
fuLanguage  l  � �����     set fuLanguage to "py3"    � 0   s e t   f u L a n g u a g e   t o   " p y 3 " �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��     l  � �!����! =  � �"#" o   � ����� 0 fileextension fileExtension# m   � �$$ �%%  p y 2��  ��    &'& k   � �(( )*) l  � ���+,��  +   Run Python 2 Scripts   , �-- *   R u n   P y t h o n   2   S c r i p t s* ./. r   � �010 m   � �22 �33  p y 21 o      ���� 0 
fulanguage 
fuLanguage/ 4��4 r   � �565 o   � ����� 0 pyscript pyScript6 o      ���� "0 fuscriptoptions fuscriptOptions��  ' 787 l  � �9����9 =  � �:;: o   � ����� 0 fileextension fileExtension; m   � �<< �==  p y 3��  ��  8 >?> k   � �@@ ABA l  � ���CD��  C   Run Python 3 Scripts   D �EE *   R u n   P y t h o n   3   S c r i p t sB FGF r   � �HIH m   � �JJ �KK  p y 3I o      ���� 0 
fulanguage 
fuLanguageG L��L r   � �MNM o   � ����� 0 pyscript pyScriptN o      ���� "0 fuscriptoptions fuscriptOptions��  ? OPO l  � �Q����Q =  � �RSR o   � ����� 0 fileextension fileExtensionS m   � �TT �UU  l u a��  ��  P VWV k  XX YZY l ��[\��  [   Run Lua scripts   \ �]]     R u n   L u a   s c r i p t sZ ^_^ r  	`a` m  bb �cc  l u aa o      �� 0 
fulanguage 
fuLanguage_ d�~d r  
efe o  
�}�} 0 	luascript 	luaScriptf o      �|�| "0 fuscriptoptions fuscriptOptions�~  W ghg l i�{�zi = jkj o  �y�y 0 fileextension fileExtensionk m  ll �mm  e y e o n s c r i p t�{  �z  h non k  -pp qrq l �xst�x  s   Run Lua scripts   t �uu     R u n   L u a   s c r i p t sr vwv r  %xyx m  !zz �{{  l u ay o      �w�w 0 
fulanguage 
fuLanguagew |�v| r  &-}~} o  &)�u�u 0 	luascript 	luaScript~ o      �t�t "0 fuscriptoptions fuscriptOptions�v  o � l 07��s�r� = 07��� o  03�q�q 0 fileextension fileExtension� m  36�� ���  s e t t i n g�s  �r  � ��� k  :��� ��� l ::�p���p  � . ( Open a Fusion Macro in the current comp   � ��� P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m p� ��� r  :A��� m  :=�� ���  l u a� o      �o�o 0 
fulanguage 
fuLanguage� ��� l BB�n�m�l�n  �m  �l  � ��� l BB�k���k  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� r  BO��� b  BK��� b  BG��� m  BE�� ���  - l� 1  EF�j
�j 
spac� o  GJ�i�i 0 
fulanguage 
fuLanguage� o      �h�h &0 fulanguageoptions fuLanguageOptions� ��� l PP�g�f�e�g  �f  �e  � ��� r  Pu��� b  Pq��� b  Pm��� b  Pi��� b  Pc��� b  P_��� b  PY��� b  PU��� o  PS�d�d 0 	luascript 	luaScript� 1  ST�c
�c 
spac� m  UX�� ��� 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [� l Y^��b�a� n  Y^��� 1  \^�`
�` 
psxp� o  Y\�_�_ 0 selectedfile selectedFile�b  �a  � m  _b�� ��� B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]  � l ch��^�]� n  ch��� 1  fh�\
�\ 
psxp� o  cf�[�[ 0 selectedfile selectedFile�^  �]  � m  il�� ���  ] ] ) ;� o  mp�Z�Z  0 luascriptclose luaScriptClose� o      �Y�Y "0 fuscriptoptions fuscriptOptions� ��� l vv�X���X  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� r  v���� b  v���� b  v���� b  v���� b  v��� b  v}��� b  vy��� o  vw�W�W 0 fuscriptpath fuscriptPath� 1  wx�V
�V 
spac� o  y|�U�U &0 fulanguageoptions fuLanguageOptions� 1  }~�T
�T 
spac� o  ��S�S 0 fuinteractive fuInteractive� 1  ���R
�R 
spac� o  ���Q�Q "0 fuscriptoptions fuscriptOptions� o      �P�P 0 command  � ��� l ���O�N�M�O  �N  �M  � ��� O ����� I ���L�K�J
�L .miscactvnull��� ��� null�K  �J  � m  �����                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��� O ����� I ���I��H
�I .coredoscnull��� ��� ctxt� o  ���G�G 0 command  �H  � m  �����                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��F� L  ���E�E  �F  � ��� l ����D�C� = ����� o  ���B�B 0 fileextension fileExtension� m  ���� ���  c o m p�D  �C  � ��A� k  ���� ��� l ���@���@  �   Open the comp   � ���    O p e n   t h e   c o m p� ��� r  ����� b  ����� b  ����� b  ����� b  ��   m  �� �  o p e n   - a 1  ���?
�? 
spac� o  ���>�> 0 
fusionpath 
fusionPath� 1  ���=
�= 
spac� l ���<�; n  �� 1  ���:
�: 
strq l ���9�8 n  ��	 1  ���7
�7 
psxp	 o  ���6�6 0 selectedfile selectedFile�9  �8  �<  �;  � o      �5�5 0 command  � 

 l ���4�4     display alert command    � ,   d i s p l a y   a l e r t   c o m m a n d  r  �� I ���3�2
�3 .sysoexecTEXT���     TEXT o  ���1�1 0 command  �2   1      �0
�0 
rslt  l ���/�/     display alert result    � *   d i s p l a y   a l e r t   r e s u l t �. L  ���-�-  �.  �A   k  ��  I ���,�+
�, .sysodisAaleR        TEXT m  �� � x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�+    �*  L  ��!! m  ��"" �## � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�*  ��   � m   x {$$�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � %&% l     �)�(�'�)  �(  �'  & '(' l     �&)*�&  )    Add the language argument   * �++ 4   A d d   t h e   l a n g u a g e   a r g u m e n t( ,-, l ��.�%�$. r  ��/0/ b  ��121 b  ��343 m  ��55 �66  - l4 1  ���#
�# 
spac2 o  ���"�" 0 
fulanguage 
fuLanguage0 o      �!�! &0 fulanguageoptions fuLanguageOptions�%  �$  - 787 l     � ���   �  �  8 9:9 l     ����  �  �  : ;<; l     �=>�  = @ : Run the script through a Terminal console view for output   > �?? t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t< @A@ l �B��B r  �CDC b  �EFE b  �GHG b  �IJI b  �KLK b  �MNM b  ��OPO o  ���� 0 fuscriptpath fuscriptPathP 1  ���
� 
spacN o  � �� &0 fulanguageoptions fuLanguageOptionsL 1  �
� 
spacJ o  �� 0 fuinteractive fuInteractiveH 1  �
� 
spacF o  
�� "0 fuscriptoptions fuscriptOptionsD o      �� 0 command  �  �  A QRQ l S��S O TUT I ���
� .miscactvnull��� ��� null�  �  U m  VV�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �  �  R WXW l +Y�
�	Y O +Z[Z I #*�\�
� .coredoscnull��� ��� ctxt\ o  #&�� 0 command  �  [ m   ]]�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �
  �	  X ^�^ l     ����  �  �  �       �_`�  _ � 
�  .aevtoappnull  �   � ****` ��a����bc��
�� .aevtoappnull  �   � ****a k    +dd  6ee  Dff  Ogg  mhh  {ii  �jj  �kk  �ll ,mm @nn Qoo W����  ��  ��  b  c H ;�� M������ X�� r�� ��� ������� � � ��������������� � ��� � � �$ � ��� � ��� ���	����$2<JTblz����������������������"5�� $0 fuscripthostname fuscriptHostname
�� 
psxp
�� 
strq�� 0 fuscriptpath fuscriptPath�� 0 
fusionpath 
fusionPath
�� 
spac�� 0 fuinteractive fuInteractive
�� 
disp
�� stic   
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� 0 dialogresult dialogResult
�� 
rslt
�� 
bhit�� 0 fileextension fileExtension�� 0 pyscript pyScript�� 0 	luascript 	luaScript��  0 luascriptclose luaScriptClose�� 0 
fulanguage 
fuLanguage�� "0 fuscriptoptions fuscriptOptions�� &0 fulanguageoptions fuLanguageOptions�� 0 selectedfile selectedFile�� 0 command  
�� .miscactvnull��� ��� null
�� .coredoscnull��� ��� ctxt
�� .sysoexecTEXT���     TEXT
�� .sysodisAaleR        TEXT��,�E�O��,�,E�O��,�,E�O�E�O�E�O����a a a mva ma a a  E` O_ a ,a   a E` Y !_ a ,a   a E` Y 	a E` Oa  na !�%a "%E` #Oa $�%a %%E` &O�a '%E` (O_ a )  a *E` +O_ #E` ,Y,_ a -  a .E` +O_ #E` ,Y_ a /  a 0E` +O_ #E` ,Y �_ a 1  a 2E` +O_ &E` ,Y �_ a 3  a 4E` +O_ &E` ,Y �_ a 5  ua 6E` +Oa 7�%_ +%E` 8O_ &�%a 9%_ :�,%a ;%_ :�,%a <%_ (%E` ,O��%_ 8%�%�%�%_ ,%E` =Oa > *j ?UOa > 	_ =j @UOhY ?_ a A  )a B�%�%�%_ :�,�,%E` =O_ =j CE` OhY a Dj EOa FUOa G�%_ +%E` 8O��%_ 8%�%�%�%_ ,%E` =Oa > *j ?UOa > 	_ =j @Uascr  ��ޭ