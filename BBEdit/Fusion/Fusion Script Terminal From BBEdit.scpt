FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' Fusion Script Terminal v2 - 2018-09-04     � 	 	 N   F u s i o n   S c r i p t   T e r m i n a l   v 2   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script grabs the foreground document from BBEdit and sends it to a Lua or Python interactive shell session via Fusion Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  �   T h i s   s c r i p t   g r a b s   t h e   f o r e g r o u n d   d o c u m e n t   f r o m   B B E d i t   a n d   s e n d s   i t   t o   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l    F���� F r     G H G n    	 I J I 1    	��
�� 
strq J n     K L K 1    ��
�� 
psxp L m     M M � N N � / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t H o      ���� 0 fuscriptpath fuscriptPath��  ��   E  O P O l    Q���� Q r     R S R n     T U T 1    ��
�� 
strq U n     V W V 1    ��
�� 
psxp W m     X X � Y Y X / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p S o      ���� 0 
fusionpath 
fusionPath��  ��   P  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app/Contents/MacOS/fuscript"    _ � ` ` �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " ]  a b a l     �� c d��   c d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app"    d � e e �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p " b  f g f l     �� h i��   h   Add a space character    i � j j ,   A d d   a   s p a c e   c h a r a c t e r g  k l k l    m���� m r     n o n m     p p � q q    o 1      ��
�� 
spac��  ��   l  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v ' ! Get the current BBEdit file name    w � x x B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e u  y z y l   [ {���� { O    [ | } | k    Z ~ ~   �  l   �� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  ��� � Q    Z � � � � r    ( � � � e    & � � n    & � � � m   # %��
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
��   �  ��� � L   X Z����  ��  ��   } m     � �t                                                                                  R*ch  alis      PineHD                         BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   z  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Add a space character    � � � � ,   A d d   a   s p a c e   c h a r a c t e r �  � � � l  \ a ����� � r   \ a � � � m   \ _ � � � � �    � 1      ��
�� 
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ) # Add the interactive shell argument    � � � � F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t �  � � � l     �� � ���   �    set fuInteractive to "-i"    � � � � 4   s e t   f u I n t e r a c t i v e   t o   " - i " �  � � � l  b i ����� � r   b i � � � m   b e � � � � �   � o      ���� 0 fuinteractive fuInteractive��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  j ����� � O   j � � � k   p � �  � � � l  p p�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   p � � � � l  p � ����� � n   p � � � � J   t � � �  � � � 1   u y��
�� 
asty �  ��� � 1   { ��
�� 
nmxt��   � 4   p t�� �
�� 
file � o   r s���� 0 selectedfile selectedFile��  ��   � J       � �  � � � o      ���� 0 filetype fileType �  ��� � o      ���� 0 fileextension fileExtension��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   � � �  � b   � � b   � � m   � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " o   � ����� $0 fuscripthostname fuscriptHostname m   � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d  o      ���� 0 	luascript 	luaScript � 	
	 r   � � b   � � 1   � ���
�� 
spac m   � � �  ' o      ����  0 luascriptclose luaScriptClose
  l  � ���������  ��  ��    l  � �����   7 1 Check if this is a Lua script or a Python script    � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �� Z   � l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � �   �!!  p y��  ��   k   � �"" #$# l  � ���%&��  % O I Run Python Scripts (You can manually force this to either Python 2 or 3)   & �'' �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 )$ ()( r   � �*+* m   � �,, �--  p y 2+ o      ���� 0 
fulanguage 
fuLanguage) ./. l  � ���01��  0   set fuLanguage to "py3"   1 �22 0   s e t   f u L a n g u a g e   t o   " p y 3 "/ 3��3 r   � �454 o   � ����� 0 pyscript pyScript5 o      �� "0 fuscriptoptions fuscriptOptions��   676 l  � �8�~�}8 =  � �9:9 o   � ��|�| 0 fileextension fileExtension: m   � �;; �<<  p y 2�~  �}  7 =>= k   � �?? @A@ l  � ��{BC�{  B   Run Python 2 Scripts   C �DD *   R u n   P y t h o n   2   S c r i p t sA EFE r   � �GHG m   � �II �JJ  - p y 2H o      �z�z 0 
fulanguage 
fuLanguageF K�yK r   � �LML o   � ��x�x 0 pyscript pyScriptM o      �w�w "0 fuscriptoptions fuscriptOptions�y  > NON l  � P�v�uP =  � QRQ o   � ��t�t 0 fileextension fileExtensionR m   � �SS �TT  p y 3�v  �u  O UVU k  WW XYX l �sZ[�s  Z   Run Python 3 Scripts   [ �\\ *   R u n   P y t h o n   3   S c r i p t sY ]^] r  
_`_ m  aa �bb  p y 3` o      �r�r 0 
fulanguage 
fuLanguage^ c�qc r  ded o  �p�p 0 pyscript pyScripte o      �o�o "0 fuscriptoptions fuscriptOptions�q  V fgf l h�n�mh = iji o  �l�l 0 fileextension fileExtensionj m  kk �ll  l u a�n  �m  g mnm k  2oo pqp l �krs�k  r   Run Lua scripts   s �tt     R u n   L u a   s c r i p t sq uvu r  &wxw m  "yy �zz  l u ax o      �j�j 0 
fulanguage 
fuLanguagev {�i{ r  '2|}| b  '.~~ o  '*�h�h 0 	luascript 	luaScript o  *-�g�g  0 luascriptclose luaScriptClose} o      �f�f "0 fuscriptoptions fuscriptOptions�i  n ��� l 5<��e�d� = 5<��� o  58�c�c 0 fileextension fileExtension� m  8;�� ���  e y e o n s c r i p t�e  �d  � ��� k  ?R�� ��� l ??�b���b  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r  ?F��� m  ?B�� ���  l u a� o      �a�a 0 
fulanguage 
fuLanguage� ��`� r  GR��� b  GN��� o  GJ�_�_ 0 	luascript 	luaScript� o  JM�^�^  0 luascriptclose luaScriptClose� o      �]�] "0 fuscriptoptions fuscriptOptions�`  � ��� l U\��\�[� = U\��� o  UX�Z�Z 0 fileextension fileExtension� m  X[�� ���  s e t t i n g�\  �[  � ��� k  _��� ��� l __�Y���Y  � . ( Open a Fusion Macro in the current comp   � ��� P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m p� ��� r  _f��� m  _b�� ���  l u a� o      �X�X 0 
fulanguage 
fuLanguage� ��� l gg�W�V�U�W  �V  �U  � ��� l gg�T���T  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� r  gt��� b  gp��� b  gl��� m  gj�� ���  - l� 1  jk�S
�S 
spac� o  lo�R�R 0 
fulanguage 
fuLanguage� o      �Q�Q &0 fulanguageoptions fuLanguageOptions� ��� l uu�P�O�N�P  �O  �N  � ��� r  u���� b  u���� b  u���� b  u���� b  u���� b  u���� b  u~��� b  uz��� o  ux�M�M 0 	luascript 	luaScript� 1  xy�L
�L 
spac� m  z}�� ��� 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [� l ~���K�J� n  ~���� 1  ��I
�I 
psxp� o  ~�H�H 0 selectedfile selectedFile�K  �J  � m  ���� ��� B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]  � l ����G�F� n  ����� 1  ���E
�E 
psxp� o  ���D�D 0 selectedfile selectedFile�G  �F  � m  ���� ���  ] ] ) ;� o  ���C�C  0 luascriptclose luaScriptClose� o      �B�B "0 fuscriptoptions fuscriptOptions� ��� l ���A���A  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���@�@ 0 fuscriptpath fuscriptPath� 1  ���?
�? 
spac� o  ���>�> &0 fulanguageoptions fuLanguageOptions� 1  ���=
�= 
spac� o  ���<�< 0 fuinteractive fuInteractive� 1  ���;
�; 
spac� o  ���:�: "0 fuscriptoptions fuscriptOptions� o      �9�9 0 command  � ��� l ���8�7�6�8  �7  �6  � ��� O ����� I ���5�4�3
�5 .miscactvnull��� ��� null�4  �3  � m  �����                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��� O ����� I ���2 �1
�2 .coredoscnull��� ��� ctxt  o  ���0�0 0 command  �1  � m  ���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � �/ L  ���.�.  �/  �  l ���-�, = �� o  ���+�+ 0 fileextension fileExtension m  �� �		  c o m p�-  �,   
�*
 k  ��  l ���)�)     Open the comp    �    O p e n   t h e   c o m p  r  �� b  �� b  �� b  �� b  �� m  �� �  o p e n   - a 1  ���(
�( 
spac o  ���'�' 0 
fusionpath 
fusionPath 1  ���&
�& 
spac l ���%�$ n  �� !  1  ���#
�# 
strq! l ��"�"�!" n  ��#$# 1  ��� 
�  
psxp$ o  ���� 0 selectedfile selectedFile�"  �!  �%  �$   o      �� 0 command   %&% l ���'(�  '   display alert command   ( �)) ,   d i s p l a y   a l e r t   c o m m a n d& *+* r  ��,-, I ���.�
� .sysoexecTEXT���     TEXT. o  ���� 0 command  �  - 1      �
� 
rslt+ /0/ l ���12�  1   display alert result   2 �33 *   d i s p l a y   a l e r t   r e s u l t0 4�4 L  ����  �  �*   k  �55 676 I ��8�
� .sysodisAaleR        TEXT8 m  �99 �:: x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  7 ;�; L  << m  
== �>> � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  ��   � m   j m??�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � @A@ l     ����  �  �  A BCB l     �DE�  D    Add the language argument   E �FF 4   A d d   t h e   l a n g u a g e   a r g u m e n tC GHG l I��I r  JKJ b  LML b  NON m  PP �QQ  - lO 1  �
� 
spacM o  �� 0 
fulanguage 
fuLanguageK o      �
�
 &0 fulanguageoptions fuLanguageOptions�  �  H RSR l     �	���	  �  �  S TUT l     �VW�  V @ : Run the script through a Terminal console view for output   W �XX t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u tU YZY l :[��[ r  :\]\ b  6^_^ b  0`a` b  .bcb b  *ded b  (fgf b  $hih b  "jkj b  lml o  �� 0 fuscriptpath fuscriptPathm 1  �
� 
spack o  !�� &0 fulanguageoptions fuLanguageOptionsi 1  "#� 
�  
spacg o  $'���� 0 fuinteractive fuInteractivee 1  ()��
�� 
spacc o  *-���� "0 fuscriptoptions fuscriptOptionsa 1  ./��
�� 
spac_ l 05n����n n  05opo 1  35��
�� 
strqp l 03q����q n  03rsr 1  13��
�� 
psxps o  01���� 0 selectedfile selectedFile��  ��  ��  ��  ] o      ���� 0 command  �  �  Z tut l     ��������  ��  ��  u vwv l ;Gx����x O ;Gyzy I AF������
�� .miscactvnull��� ��� null��  ��  z m  ;>{{�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  w |}| l HV~����~ O HV� I NU�����
�� .coredoscnull��� ��� ctxt� o  NQ���� 0 command  ��  � m  HK���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  } ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    V��  6��  D��  O��  k��  y��  ���  ���  ��� G�� Y�� v�� |����  ��  ��  �  � J ;�� M������ X�� p�� ����������� ����� ������������� � ���?���������� � ������� ,����;ISaky���������������������9��=P�� $0 fuscripthostname fuscriptHostname
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
�� .sysodlogaskr        TEXT�� 0 fuinteractive fuInteractive
�� 
asty
�� 
nmxt
�� 
cobj�� 0 filetype fileType�� 0 fileextension fileExtension�� 0 pyscript pyScript�� 0 	luascript 	luaScript��  0 luascriptclose luaScriptClose�� 0 
fulanguage 
fuLanguage�� "0 fuscriptoptions fuscriptOptions�� &0 fulanguageoptions fuLanguageOptions�� 0 command  
�� .miscactvnull��� ��� null
�� .coredoscnull��� ��� ctxt
�� .sysoexecTEXT���     TEXT
�� 
rslt
�� .sysodisAaleR        TEXT��W�E�O��,�,E�O��,�,E�O�E�O� @ *�k/�,EE�W 1X  a E` O_ a a kva ka ka a a  OhUOa E�Oa E` Oa �*��/[a ,\[a ,\ZlvE[a  k/E` !Z[a  l/E` "ZOa #�%a $%E` %Oa &�%a '%E` (O�a )%E` *O_ "a +  a ,E` -O_ %E` .Y0_ "a /  a 0E` -O_ %E` .Y_ "a 1  a 2E` -O_ %E` .Y �_ "a 3  a 4E` -O_ (_ *%E` .Y �_ "a 5  a 6E` -O_ (_ *%E` .Y �_ "a 7  sa 8E` -Oa 9�%_ -%E` :O_ (�%a ;%��,%a <%��,%a =%_ *%E` .O��%_ :%�%_ %�%_ .%E` >Oa ? *j @UOa ? 	_ >j AUOhY =_ "a B  'a C�%�%�%��,�,%E` >O_ >j DE` EOhY a Fj GOa HUOa I�%_ -%E` :O��%_ :%�%_ %�%_ .%�%��,�,%E` >Oa ? *j @UOa ? 	_ >j AU ascr  ��ޭ