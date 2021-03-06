FasdUAS 1.101.10   ��   ��    k             l     ��  ��    @ : Fusion Script Terminal With File Dialog v1.1 - 2018-09-04     � 	 	 t   F u s i o n   S c r i p t   T e r m i n a l   W i t h   F i l e   D i a l o g   v 1 . 1   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script shows a file dialog that lets you open a Lua or Python interactive shell session via Fusion Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  n   T h i s   s c r i p t   s h o w s   a   f i l e   d i a l o g   t h a t   l e t s   y o u   o p e n   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l    F���� F r     G H G n    	 I J I 1    	��
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
spac��  ��   n  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x ) # Add the interactive shell argument    y � z z F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t w  { | { l    }���� } r     ~  ~ m     � � � � �  - i  o      ���� 0 fuinteractive fuInteractive��  ��   |  � � � l     �� � ���   �   set fuInteractive to ""    � � � � 0   s e t   f u I n t e r a c t i v e   t o   " " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Select a file on disk    � � � � ,   S e l e c t   a   f i l e   o n   d i s k �  � � � l   # ����� � r    # � � � l   ! ����� � l   ! ����� � I   !������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��   � o      ���� 0 selectedfile selectedFile��  ��   �  � � � l     ��������  ��  ��   �  � � � l  $� ����� � O   $� � � � k   (� � �  � � � l  ( (�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   ( R � � � l  ( ; ����� � n   ( ; � � � J   , ; � �  � � � 1   - 1��
�� 
asty �  ��� � 1   3 7��
�� 
nmxt��   � 4   ( ,�� �
�� 
file � o   * +���� 0 selectedfile selectedFile��  ��   � J       � �  � � � o      ���� 0 filetype fileType �  ��� � o      ���� 0 fileextension fileExtension��   �  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   S ` � � � b   S \ � � � b   S X � � � m   S V � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   V W���� $0 fuscripthostname fuscriptHostname � m   X [ � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   a n � � � b   a j � � � b   a f � � � m   a d � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   d e���� $0 fuscripthostname fuscriptHostname � m   f i � � � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d � o      ���� 0 	luascript 	luaScript �  � � � r   o x � � � b   o t � � � 1   o p��
�� 
spac � m   p s � � � � �  ' � o      ����  0 luascriptclose luaScriptClose �  � � � l  y y��������  ��  ��   �  � � � l  y y�� � ���   � 7 1 Check if this is a Lua script or a Python script    � � � � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �  ��� � Z   y� � � � � � l  y � ����� � =  y � � � � o   y |���� 0 fileextension fileExtension � m   |  � � � � �  p y��  ��   � k   � � � �  � � � l  � ��� � ���   � O I Run Python Scripts (You can manually force this to either Python 2 or 3)    � � � � �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 ) �  � � � r   � � � � � m   � � � � � � �  p y 2 � o      ���� 0 
fulanguage 
fuLanguage �  � � � l  � ��� � ���   �   set fuLanguage to "py3"    � � � � 0   s e t   f u L a n g u a g e   t o   " p y 3 " �  ��� � r   � � � � � o   � ����� 0 pyscript pyScript � o      ���� "0 fuscriptoptions fuscriptOptions��   �  � � � l  � � ����  =  � � o   � ����� 0 fileextension fileExtension m   � � �  p y 2��  ��   �  k   � � 	 l  � ���
��  
   Run Python 2 Scripts    � *   R u n   P y t h o n   2   S c r i p t s	  r   � � m   � � �  - p y 2 o      ���� 0 
fulanguage 
fuLanguage �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��    l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � � �  p y 3��  ��    k   � �  !  l  � ���"#��  "   Run Python 3 Scripts   # �$$ *   R u n   P y t h o n   3   S c r i p t s! %&% r   � �'(' m   � �)) �**  p y 3( o      ���� 0 
fulanguage 
fuLanguage& +��+ r   � �,-, o   � ����� 0 pyscript pyScript- o      ���� "0 fuscriptoptions fuscriptOptions��   ./. l  � �0����0 =  � �121 o   � ����� 0 fileextension fileExtension2 m   � �33 �44  l u a��  ��  / 565 k   � �77 898 l  � ���:;��  :   Run Lua scripts   ; �<<     R u n   L u a   s c r i p t s9 =>= r   � �?@? m   � �AA �BB  l u a@ o      ���� 0 
fulanguage 
fuLanguage> C�C r   � �DED o   � ��~�~ 0 	luascript 	luaScriptE o      �}�} "0 fuscriptoptions fuscriptOptions�  6 FGF l  � �H�|�{H =  � �IJI o   � ��z�z 0 fileextension fileExtensionJ m   � �KK �LL  e y e o n s c r i p t�|  �{  G MNM k   �OO PQP l  � ��yRS�y  R   Run Lua scripts   S �TT     R u n   L u a   s c r i p t sQ UVU r   � �WXW m   � �YY �ZZ  l u aX o      �x�x 0 
fulanguage 
fuLanguageV [�w[ r   �\]\ o   � ��v�v 0 	luascript 	luaScript] o      �u�u "0 fuscriptoptions fuscriptOptions�w  N ^_^ l `�t�s` = aba o  �r�r 0 fileextension fileExtensionb m  cc �dd  s e t t i n g�t  �s  _ efe k  {gg hih l �qjk�q  j . ( Open a Fusion Macro in the current comp   k �ll P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m pi mnm r  opo m  qq �rr  l u ap o      �p�p 0 
fulanguage 
fuLanguagen sts l �o�n�m�o  �n  �m  t uvu l �lwx�l  w    Add the language argument   x �yy 4   A d d   t h e   l a n g u a g e   a r g u m e n tv z{z r  $|}| b   ~~ b  ��� m  �� ���  - l� 1  �k
�k 
spac o  �j�j 0 
fulanguage 
fuLanguage} o      �i�i &0 fulanguageoptions fuLanguageOptions{ ��� l %%�h�g�f�h  �g  �f  � ��� r  %F��� b  %B��� b  %>��� b  %:��� b  %6��� b  %2��� b  %.��� b  %*��� o  %(�e�e 0 	luascript 	luaScript� 1  ()�d
�d 
spac� m  *-�� ��� 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [� l .1��c�b� n  .1��� 1  /1�a
�a 
psxp� o  ./�`�` 0 selectedfile selectedFile�c  �b  � m  25�� ��� B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]  � l 69��_�^� n  69��� 1  79�]
�] 
psxp� o  67�\�\ 0 selectedfile selectedFile�_  �^  � m  :=�� ���  ] ] ) ;� o  >A�[�[  0 luascriptclose luaScriptClose� o      �Z�Z "0 fuscriptoptions fuscriptOptions� ��� l GG�Y���Y  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� r  G\��� b  GX��� b  GT��� b  GR��� b  GP��� b  GN��� b  GJ��� o  GH�X�X 0 fuscriptpath fuscriptPath� 1  HI�W
�W 
spac� o  JM�V�V &0 fulanguageoptions fuLanguageOptions� 1  NO�U
�U 
spac� o  PQ�T�T 0 fuinteractive fuInteractive� 1  RS�S
�S 
spac� o  TW�R�R "0 fuscriptoptions fuscriptOptions� o      �Q�Q 0 command  � ��� l ]]�P�O�N�P  �O  �N  � ��� O ]i��� I ch�M�L�K
�M .miscactvnull��� ��� null�L  �K  � m  ]`���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��� O jx��� I pw�J��I
�J .coredoscnull��� ��� ctxt� o  ps�H�H 0 command  �I  � m  jm���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��G� L  y{�F�F  �G  f ��� l ~���E�D� = ~���� o  ~��C�C 0 fileextension fileExtension� m  ���� ���  c o m p�E  �D  � ��B� k  ���� ��� l ���A���A  �   Open the comp   � ���    O p e n   t h e   c o m p� ��� r  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  o p e n   - a� 1  ���@
�@ 
spac� o  ���?�? 0 
fusionpath 
fusionPath� 1  ���>
�> 
spac� l ����=�<� n  ����� 1  ���;
�; 
strq� l ����:�9� n  ����� 1  ���8
�8 
psxp� o  ���7�7 0 selectedfile selectedFile�:  �9  �=  �<  � o      �6�6 0 command  � ��� l ���5���5  �   display alert command   � ��� ,   d i s p l a y   a l e r t   c o m m a n d� ��� r  ����� I ���4��3
�4 .sysoexecTEXT���     TEXT� o  ���2�2 0 command  �3  � 1      �1
�1 
rslt� ��� l ���0���0  �   display alert result   � ��� *   d i s p l a y   a l e r t   r e s u l t� ��/� L  ���.�.  �/  �B   � k  ���� ��� I ���-��,
�- .sysodisAaleR        TEXT� m  ���� ��� x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�,  � ��+� L  ��   m  �� � � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�+  ��   � m   $ %�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �*�)�(�*  �)  �(    l     �'	�'      Add the language argument   	 �

 4   A d d   t h e   l a n g u a g e   a r g u m e n t  l ���&�% r  �� b  �� b  �� m  �� �  - l 1  ���$
�$ 
spac o  ���#�# 0 
fulanguage 
fuLanguage o      �"�" &0 fulanguageoptions fuLanguageOptions�&  �%    l     �!� ��!  �   �    l     ��   @ : Run the script through a Terminal console view for output    � t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t  l ���� r  �� !  b  ��"#" b  ��$%$ b  ��&'& b  ��()( b  ��*+* b  ��,-, b  ��./. b  ��010 o  ���� 0 fuscriptpath fuscriptPath1 1  ���
� 
spac/ o  ���� &0 fulanguageoptions fuLanguageOptions- 1  ���
� 
spac+ o  ���� 0 fuinteractive fuInteractive) 1  ���
� 
spac' o  ���� "0 fuscriptoptions fuscriptOptions% 1  ���
� 
spac# l ��2��2 n  ��343 1  ���
� 
strq4 l ��5��5 n  ��676 1  ���
� 
psxp7 o  ���� 0 selectedfile selectedFile�  �  �  �  ! o      �� 0 command  �  �   898 l ��:��
: O ��;<; I ���	��
�	 .miscactvnull��� ��� null�  �  < m  ��==�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �  �
  9 >?> l �@��@ O �ABA I ��C�
� .coredoscnull��� ��� ctxtC o  ���� 0 command  �  B m  ��DD�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �  �  ? E�E l     � �����   ��  ��  �       ��FG��  F ��
�� .aevtoappnull  �   � ****G ��H����IJ��
�� .aevtoappnull  �   � ****H k    KK  6LL  DMM  ONN  mOO  {PP  �QQ  �RR SS TT 8UU >����  ��  ��  I  J < ;�� M������ X�� r�� ������������������� � ��� � ��� ��� � �����)3AKYcq������������������������ $0 fuscripthostname fuscriptHostname
�� 
psxp
�� 
strq�� 0 fuscriptpath fuscriptPath�� 0 
fusionpath 
fusionPath
�� 
spac�� 0 fuinteractive fuInteractive
�� .sysostdfalis    ��� null�� 0 selectedfile selectedFile
�� 
file
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
�� .sysodisAaleR        TEXT���E�O��,�,E�O��,�,E�O�E�O�E�O*j E�O��*��/[a ,\[a ,\ZlvE[a k/E` Z[a l/E` ZOa �%a %E` Oa �%a %E` O�a %E` O_ a   a E` O_ E`  Y&_ a !  a "E` O_ E`  Y
_ a #  a $E` O_ E`  Y �_ a %  a &E` O_ E`  Y �_ a '  a (E` O_ E`  Y �_ a )  qa *E` Oa +�%_ %E` ,O_ �%a -%��,%a .%��,%a /%_ %E`  O��%_ ,%�%�%�%_  %E` 0Oa 1 *j 2UOa 1 	_ 0j 3UOhY =_ a 4  'a 5�%�%�%��,�,%E` 0O_ 0j 6E` 7OhY a 8j 9Oa :UOa ;�%_ %E` ,O��%_ ,%�%�%�%_  %�%��,�,%E` 0Oa 1 *j 2UOa 1 	_ 0j 3Uascr  ��ޭ