FasdUAS 1.101.10   ��   ��    k             l     ��  ��    @ : Fusion Script Terminal With File Dialog v2.0 - 2018-09-04     � 	 	 t   F u s i o n   S c r i p t   T e r m i n a l   W i t h   F i l e   D i a l o g   v 2 . 0   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script shows a file dialog that lets you open a Lua or Python interactive shell session via Fusion Studio/Resolve Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  �   T h i s   s c r i p t   s h o w s   a   f i l e   d i a l o g   t h a t   l e t s   y o u   o p e n   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o / R e s o l v e   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l     �� F G��   F   Resolve Studio v15    G � H H &   R e s o l v e   S t u d i o   v 1 5 E  I J I l    K���� K r     L M L n    	 N O N 1    	��
�� 
strq O n     P Q P 1    ��
�� 
psxp Q m     R R � S S � / A p p l i c a t i o n s / D a V i n c i   R e s o l v e / D a V i n c i   R e s o l v e . a p p / C o n t e n t s / L i b r a r i e s / F u s i o n / f u s c r i p t M o      ���� 0 fuscriptpath fuscriptPath��  ��   J  T U T l    V���� V r     W X W n     Y Z Y 1    ��
�� 
strq Z n     [ \ [ 1    ��
�� 
psxp \ m     ] ] � ^ ^ b / A p p l i c a t i o n s / D a V i n c i   R e s o l v e / D a V i n c i   R e s o l v e . a p p X o      ���� 0 
fusionpath 
fusionPath��  ��   U  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c   Fusion Studio v9    d � e e "   F u s i o n   S t u d i o   v 9 b  f g f l     �� h i��   h ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 9/Fusion.app/Contents/MacOS/fuscript"    i � j j �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " g  k l k l     �� m n��   m d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 9/Fusion.app"    n � o o �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p " l  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t   Fusion Studio v8    u � v v "   F u s i o n   S t u d i o   v 8 s  w x w l     �� y z��   y ~ x set fuscriptPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app/Contents/MacOS/fuscript"    z � { { �   s e t   f u s c r i p t P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t " x  | } | l     �� ~ ��   ~ d ^ set fusionPath to quoted form of POSIX path of "/Applications/Blackmagic Fusion 8/Fusion.app"     � � � �   s e t   f u s i o n P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   8 / F u s i o n . a p p " }  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Add a space character    � � � � ,   A d d   a   s p a c e   c h a r a c t e r �  � � � l    ����� � r     � � � m     � � � � �    � 1      ��
�� 
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ) # Add the interactive shell argument    � � � � F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t �  � � � l    ����� � r     � � � m     � � � � �  - i � o      ���� 0 fuinteractive fuInteractive��  ��   �  � � � l     �� � ���   �   set fuInteractive to ""    � � � � 0   s e t   f u I n t e r a c t i v e   t o   " " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Select a file on disk    � � � � ,   S e l e c t   a   f i l e   o n   d i s k �  � � � l   # ����� � r    # � � � l   ! ����� � l   ! ����� � I   !������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��   � o      ���� 0 selectedfile selectedFile��  ��   �  � � � l     ��������  ��  ��   �  � � � l  $� ����� � O   $� � � � k   (� � �  � � � l  ( (�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   ( R � � � l  ( ; ����� � n   ( ; � � � J   , ; � �  � � � 1   - 1��
�� 
asty �  ��� � 1   3 7��
�� 
nmxt��   � 4   ( ,�� �
�� 
file � o   * +���� 0 selectedfile selectedFile��  ��   � J       � �  � � � o      ���� 0 filetype fileType �  ��� � o      ���� 0 fileextension fileExtension��   �  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   �   Resolve Studio    � � � �    R e s o l v e   S t u d i o �  � � � r   S ` � � � b   S \ � � � b   S X � � � m   S V � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   V W���� $0 fuscripthostname fuscriptHostname � m   X [ � � � � � � " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ) ' � o      ���� 0 pyscript pyScript �  � � � r   a t � � � b   a p � � � b   a l � � � b   a j � � � b   a f � � � m   a d � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   d e���� $0 fuscripthostname fuscriptHostname � m   f i � � � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ,   " � o   j k���� $0 fuscripthostname fuscriptHostname � m   l o � � � � � � " ) ; i f   r e s o l v e   ~ =   n i l   t h e n   r e s   =   r e s o l v e ; e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ; � o      ���� 0 	luascript 	luaScript �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   �   Fusion Studio    � � � �    F u s i o n   S t u d i o �    l  u u����   � � set pyScript to "-x 'from pprint import pprint;import BlackmagicFusion as bmd;fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");fu = fusion;app = fusion;comp = fusion.GetCurrentComp()'"    ��   s e t   p y S c r i p t   t o   " - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' "  l  u u����  ! set luaScript to "-x 'fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");if fusion ~= nil then fu = fusion;app = fu;composition = fu.CurrentComp;comp = composition;SetActiveComp(comp) else print(\"[Error] Please open up the Fusion GUI before running this tool.\") end"    �		6   s e t   l u a S c r i p t   t o   " - x   ' f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( \ " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . \ " )   e n d " 

 l  u u��������  ��  ��    r   u ~ b   u z 1   u v��
�� 
spac m   v y �  ' o      ����  0 luascriptclose luaScriptClose  l   ��������  ��  ��    l   ����   7 1 Check if this is a Lua script or a Python script    � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �� Z   � l   � ����  =   �!"! o    ����� 0 fileextension fileExtension" m   � �## �$$  p y��  ��   k   � �%% &'& l  � ���()��  ( O I Run Python Scripts (You can manually force this to either Python 2 or 3)   ) �** �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 )' +,+ r   � �-.- m   � �// �00  p y 2. o      ���� 0 
fulanguage 
fuLanguage, 121 l  � ���34��  3   set fuLanguage to "py3"   4 �55 0   s e t   f u L a n g u a g e   t o   " p y 3 "2 6��6 r   � �787 o   � ����� 0 pyscript pyScript8 o      �� "0 fuscriptoptions fuscriptOptions��   9:9 l  � �;�~�}; =  � �<=< o   � ��|�| 0 fileextension fileExtension= m   � �>> �??  p y 2�~  �}  : @A@ k   � �BB CDC l  � ��{EF�{  E   Run Python 2 Scripts   F �GG *   R u n   P y t h o n   2   S c r i p t sD HIH r   � �JKJ m   � �LL �MM  - p y 2K o      �z�z 0 
fulanguage 
fuLanguageI N�yN r   � �OPO o   � ��x�x 0 pyscript pyScriptP o      �w�w "0 fuscriptoptions fuscriptOptions�y  A QRQ l  � �S�v�uS =  � �TUT o   � ��t�t 0 fileextension fileExtensionU m   � �VV �WW  p y 3�v  �u  R XYX k   � �ZZ [\[ l  � ��s]^�s  ]   Run Python 3 Scripts   ^ �__ *   R u n   P y t h o n   3   S c r i p t s\ `a` r   � �bcb m   � �dd �ee  p y 3c o      �r�r 0 
fulanguage 
fuLanguagea f�qf r   � �ghg o   � ��p�p 0 pyscript pyScripth o      �o�o "0 fuscriptoptions fuscriptOptions�q  Y iji l  � �k�n�mk =  � �lml o   � ��l�l 0 fileextension fileExtensionm m   � �nn �oo  l u a�n  �m  j pqp k   � �rr sts l  � ��kuv�k  u   Run Lua scripts   v �ww     R u n   L u a   s c r i p t st xyx r   � �z{z m   � �|| �}}  l u a{ o      �j�j 0 
fulanguage 
fuLanguagey ~�i~ r   � �� o   � ��h�h 0 	luascript 	luaScript� o      �g�g "0 fuscriptoptions fuscriptOptions�i  q ��� l  � ���f�e� =  � ���� o   � ��d�d 0 fileextension fileExtension� m   � ��� ���  e y e o n s c r i p t�f  �e  � ��� k   ��� ��� l  � ��c���c  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r   � ��� m   � ��� ���  l u a� o      �b�b 0 
fulanguage 
fuLanguage� ��a� r  ��� o  �`�` 0 	luascript 	luaScript� o      �_�_ "0 fuscriptoptions fuscriptOptions�a  � ��� l ��^�]� = ��� o  �\�\ 0 fileextension fileExtension� m  �� ���  s e t t i n g�^  �]  � ��� k  ��� ��� l �[���[  � . ( Open a Fusion Macro in the current comp   � ��� P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m p� ��� r  ��� m  �� ���  l u a� o      �Z�Z 0 
fulanguage 
fuLanguage� ��� l �Y�X�W�Y  �X  �W  � ��� l �V���V  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� r  *��� b  &��� b  "��� m   �� ���  - l� 1   !�U
�U 
spac� o  "%�T�T 0 
fulanguage 
fuLanguage� o      �S�S &0 fulanguageoptions fuLanguageOptions� ��� l ++�R�Q�P�R  �Q  �P  � ��� r  +L��� b  +H��� b  +D��� b  +@��� b  +<��� b  +8��� b  +4��� b  +0��� o  +.�O�O 0 	luascript 	luaScript� 1  ./�N
�N 
spac� m  03�� ��� 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [� l 47��M�L� n  47��� 1  57�K
�K 
psxp� o  45�J�J 0 selectedfile selectedFile�M  �L  � m  8;�� ��� B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]  � l <?��I�H� n  <?��� 1  =?�G
�G 
psxp� o  <=�F�F 0 selectedfile selectedFile�I  �H  � m  @C�� ���  ] ] ) ;� o  DG�E�E  0 luascriptclose luaScriptClose� o      �D�D "0 fuscriptoptions fuscriptOptions� ��� l MM�C���C  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� r  Mb��� b  M^��� b  MZ��� b  MX��� b  MV��� b  MT��� b  MP��� o  MN�B�B 0 fuscriptpath fuscriptPath� 1  NO�A
�A 
spac� o  PS�@�@ &0 fulanguageoptions fuLanguageOptions� 1  TU�?
�? 
spac� o  VW�>�> 0 fuinteractive fuInteractive� 1  XY�=
�= 
spac� o  Z]�<�< "0 fuscriptoptions fuscriptOptions� o      �;�; 0 command  � ��� l cc�:�9�8�:  �9  �8  � ��� O co��� I in�7�6�5
�7 .miscactvnull��� ��� null�6  �5  � m  cf���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � ��� O p~��� I v}�4��3
�4 .coredoscnull��� ��� ctxt� o  vy�2�2 0 command  �3  � m  ps  �                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  � �1 L  ��0�0  �1  �  l ���/�. = �� o  ���-�- 0 fileextension fileExtension m  �� �  c o m p�/  �.   	�,	 k  ��

  l ���+�+     Open the comp    �    O p e n   t h e   c o m p  r  �� b  �� b  �� b  �� b  �� m  �� �  o p e n   - a 1  ���*
�* 
spac o  ���)�) 0 
fusionpath 
fusionPath 1  ���(
�( 
spac l ���'�& n  ��  1  ���%
�% 
strq  l ��!�$�#! n  ��"#" 1  ���"
�" 
psxp# o  ���!�! 0 selectedfile selectedFile�$  �#  �'  �&   o      � �  0 command   $%$ l ���&'�  &   display alert command   ' �(( ,   d i s p l a y   a l e r t   c o m m a n d% )*) r  ��+,+ I ���-�
� .sysoexecTEXT���     TEXT- o  ���� 0 command  �  , 1      �
� 
rslt* ./. l ���01�  0   display alert result   1 �22 *   d i s p l a y   a l e r t   r e s u l t/ 3�3 L  ����  �  �,   k  ��44 565 I ���7�
� .sysodisAaleR        TEXT7 m  ��88 �99 x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  6 :�: L  ��;; m  ��<< �== � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  ��   � m   $ %>>�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � ?@? l     ����  �  �  @ ABA l     �CD�  C    Add the language argument   D �EE 4   A d d   t h e   l a n g u a g e   a r g u m e n tB FGF l ��H��H r  ��IJI b  ��KLK b  ��MNM m  ��OO �PP  - lN 1  ���
� 
spacL o  ���� 0 
fulanguage 
fuLanguageJ o      �� &0 fulanguageoptions fuLanguageOptions�  �  G QRQ l     ��
�	�  �
  �	  R STS l     �UV�  U @ : Run the script through a Terminal console view for output   V �WW t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u tT XYX l ��Z��Z r  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc b  ��efe b  ��ghg b  ��iji b  ��klk o  ���� 0 fuscriptpath fuscriptPathl 1  ���
� 
spacj o  ���� &0 fulanguageoptions fuLanguageOptionsh 1  ���
� 
spacf o  ���� 0 fuinteractive fuInteractived 1  ��� 
�  
spacb o  ������ "0 fuscriptoptions fuscriptOptions` 1  ����
�� 
spac^ l ��m����m n  ��non 1  ����
�� 
strqo l ��p����p n  ��qrq 1  ����
�� 
psxpr o  ������ 0 selectedfile selectedFile��  ��  ��  ��  \ o      ���� 0 command  �  �  Y sts l ��u����u O ��vwv I ��������
�� .miscactvnull��� ��� null��  ��  w m  ��xx�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  t yzy l �{����{ O �|}| I  ��~��
�� .coredoscnull��� ��� ctxt~ o   ���� 0 command  ��  } m  ���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  z ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ��  6��  I��  T��  ���  ���  ���  ��� F�� X�� s�� y����  ��  ��  �  � = ;�� R������ ]�� ��� �������>������������ � ��� � � �����#/����>LVdn|���������������������8��<O�� $0 fuscripthostname fuscriptHostname
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
�� .sysodisAaleR        TEXT��	�E�O��,�,E�O��,�,E�O�E�O�E�O*j E�O��*��/[a ,\[a ,\ZlvE[a k/E` Z[a l/E` ZOa �%a %E` Oa �%a %�%a %E` O�a %E` O_ a   a E`  O_ E` !Y&_ a "  a #E`  O_ E` !Y
_ a $  a %E`  O_ E` !Y �_ a &  a 'E`  O_ E` !Y �_ a (  a )E`  O_ E` !Y �_ a *  qa +E`  Oa ,�%_  %E` -O_ �%a .%��,%a /%��,%a 0%_ %E` !O��%_ -%�%�%�%_ !%E` 1Oa 2 *j 3UOa 2 	_ 1j 4UOhY =_ a 5  'a 6�%�%�%��,�,%E` 1O_ 1j 7E` 8OhY a 9j :Oa ;UOa <�%_  %E` -O��%_ -%�%�%�%_ !%�%��,�,%E` 1Oa 2 *j 3UOa 2 	_ 1j 4Uascr  ��ޭ