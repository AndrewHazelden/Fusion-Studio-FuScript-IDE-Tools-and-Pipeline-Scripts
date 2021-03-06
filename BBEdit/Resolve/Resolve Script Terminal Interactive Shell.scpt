FasdUAS 1.101.10   ��   ��    k             l     ��  ��    A ; Fusion Script Terminal Interactive Shell v2.0 - 2018-09-04     � 	 	 v   F u s i o n   S c r i p t   T e r m i n a l   I n t e r a c t i v e   S h e l l   v 2 . 0   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script opens a Lua or Python interactive shell session using Fusion Studio/Resolve Studio + FuScript. If you don't select a script language in the dialog after 8 seconds Lua will be chosen as the default option.     �  �   T h i s   s c r i p t   o p e n s   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   u s i n g   F u s i o n   S t u d i o / R e s o l v e   S t u d i o   +   F u S c r i p t .   I f   y o u   d o n ' t   s e l e c t   a   s c r i p t   l a n g u a g e   i n   t h e   d i a l o g   a f t e r   8   s e c o n d s   L u a   w i l l   b e   c h o s e n   a s   t h e   d e f a u l t   o p t i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l     �� F G��   F   Resolve Studio v15    G � H H &   R e s o l v e   S t u d i o   v 1 5 E  I J I l    K���� K r     L M L n    	 N O N 1    	��
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
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ) # Add the interactive shell argument    � � � � F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t �  � � � l    ����� � r     � � � m     � � � � �  - i � o      ���� 0 fuinteractive fuInteractive��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + % Ask If you want to run Python or Lua    � � � � J   A s k   I f   y o u   w a n t   t o   r u n   P y t h o n   o r   L u a �  � � � l   ? ����� � r    ? � � � l   ; ����� � I   ;�� � �
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
rslt � m   _ b � � � � �  P y t h o n   3 �  ��� � r   f m � � � m   f i � � � � �  p y 3 � o      ���� 0 fileextension fileExtension��   � r   p w � � � m   p s � � � � �  l u a � o      ���� 0 fileextension fileExtension��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  x� ����� � O   x� � � � k   ~� � �  � � � l  ~ ~�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  ~ ~��������  ��  ��   �  � � � l  ~ ~�� � ���   �   Resolve Studio    � � � �    R e s o l v e   S t u d i o �  � � � r   ~ � � � � b   ~ �   b   ~ � m   ~ � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " o   � ����� $0 fuscripthostname fuscriptHostname m   � � � � " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ) ' � o      ���� 0 pyscript pyScript � 	 r   � �

 b   � � b   � � b   � � b   � � m   � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " o   � ����� $0 fuscripthostname fuscriptHostname m   � � �� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ,   " o   � ����� $0 fuscripthostname fuscriptHostname m   � � � � " ) ; i f   r e s o l v e   ~ =   n i l   t h e n   r e s   =   r e s o l v e ; e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ; o      ���� 0 	luascript 	luaScript	  l  � ���������  ��  ��    l  � �����     Fusion Studio    �      F u s i o n   S t u d i o !"! l  � ���#$��  # � � set pyScript to "-x 'from pprint import pprint;import BlackmagicFusion as bmd;fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");fu = fusion;app = fusion;comp = fusion.GetCurrentComp()'"   $ �%%�   s e t   p y S c r i p t   t o   " - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' "" &'& l  � ���()��  (! set luaScript to "-x 'fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");if fusion ~= nil then fu = fusion;app = fu;composition = fu.CurrentComp;comp = composition;SetActiveComp(comp) else print(\"[Error] Please open up the Fusion GUI before running this tool.\") end"   ) �**6   s e t   l u a S c r i p t   t o   " - x   ' f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( \ " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . \ " )   e n d "' +,+ l  � ���������  ��  ��  , -.- r   � �/0/ b   � �121 1   � ���
�� 
spac2 m   � �33 �44  '0 o      ����  0 luascriptclose luaScriptClose. 565 l  � ���������  ��  ��  6 787 l  � ���9:��  9 7 1 Check if this is a Lua script or a Python script   : �;; b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t8 <��< Z   ��=>?@= l  � �A����A =  � �BCB o   � ����� 0 fileextension fileExtensionC m   � �DD �EE  p y��  ��  > k   � �FF GHG l  � ���IJ��  I O I Run Python Scripts (You can manually force this to either Python 2 or 3)   J �KK �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 )H LML r   � �NON m   � �PP �QQ  p y 2O o      ���� 0 
fulanguage 
fuLanguageM RSR l  � ���TU��  T   set fuLanguage to "py3"   U �VV 0   s e t   f u L a n g u a g e   t o   " p y 3 "S W��W r   � �XYX o   � ��� 0 pyscript pyScriptY o      �~�~ "0 fuscriptoptions fuscriptOptions��  ? Z[Z l  � �\�}�|\ =  � �]^] o   � ��{�{ 0 fileextension fileExtension^ m   � �__ �``  p y 2�}  �|  [ aba k   � �cc ded l  � ��zfg�z  f   Run Python 2 Scripts   g �hh *   R u n   P y t h o n   2   S c r i p t se iji r   � �klk m   � �mm �nn  p y 2l o      �y�y 0 
fulanguage 
fuLanguagej o�xo r   � �pqp o   � ��w�w 0 pyscript pyScriptq o      �v�v "0 fuscriptoptions fuscriptOptions�x  b rsr l  � �t�u�tt =  � �uvu o   � ��s�s 0 fileextension fileExtensionv m   � �ww �xx  p y 3�u  �t  s yzy k   � �{{ |}| l  � ��r~�r  ~   Run Python 3 Scripts    ��� *   R u n   P y t h o n   3   S c r i p t s} ��� r   � ���� m   � ��� ���  p y 3� o      �q�q 0 
fulanguage 
fuLanguage� ��p� r   � ���� o   � ��o�o 0 pyscript pyScript� o      �n�n "0 fuscriptoptions fuscriptOptions�p  z ��� l  ���m�l� =  ���� o   ��k�k 0 fileextension fileExtension� m  �� ���  l u a�m  �l  � ��� k  �� ��� l �j���j  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r  ��� m  �� ���  l u a� o      �i�i 0 
fulanguage 
fuLanguage� ��h� r  ��� o  �g�g 0 	luascript 	luaScript� o      �f�f "0 fuscriptoptions fuscriptOptions�h  � ��� l !��e�d� = !��� o  �c�c 0 fileextension fileExtension� m   �� ���  e y e o n s c r i p t�e  �d  � ��� k  $3�� ��� l $$�b���b  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r  $+��� m  $'�� ���  l u a� o      �a�a 0 
fulanguage 
fuLanguage� ��`� r  ,3��� o  ,/�_�_ 0 	luascript 	luaScript� o      �^�^ "0 fuscriptoptions fuscriptOptions�`  � ��� l 6=��]�\� = 6=��� o  69�[�[ 0 fileextension fileExtension� m  9<�� ���  s e t t i n g�]  �\  � ��� k  @��� ��� l @@�Z���Z  � . ( Open a Fusion Macro in the current comp   � ��� P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m p� ��� r  @G��� m  @C�� ���  l u a� o      �Y�Y 0 
fulanguage 
fuLanguage� ��� l HH�X�W�V�X  �W  �V  � ��� l HH�U���U  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� r  HU��� b  HQ��� b  HM��� m  HK�� ���  - l� 1  KL�T
�T 
spac� o  MP�S�S 0 
fulanguage 
fuLanguage� o      �R�R &0 fulanguageoptions fuLanguageOptions� ��� l VV�Q�P�O�Q  �P  �O  � ��� r  V{��� b  Vw��� b  Vs��� b  Vo��� b  Vi��� b  Ve��� b  V_��� b  V[��� o  VY�N�N 0 	luascript 	luaScript� 1  YZ�M
�M 
spac� m  [^�� ��� 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [� l _d��L�K� n  _d��� 1  bd�J
�J 
psxp� o  _b�I�I 0 selectedfile selectedFile�L  �K  � m  eh�� ��� B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]  � l in��H�G� n  in��� 1  ln�F
�F 
psxp� o  il�E�E 0 selectedfile selectedFile�H  �G  � m  or�� ���  ] ] ) ;� o  sv�D�D  0 luascriptclose luaScriptClose� o      �C�C "0 fuscriptoptions fuscriptOptions�    l ||�B�B   @ : Run the script through a Terminal console view for output    � t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t  r  |� b  |�	
	 b  |� b  |� b  |� b  |� b  | o  |}�A�A 0 fuscriptpath fuscriptPath 1  }~�@
�@ 
spac o  ��?�? &0 fulanguageoptions fuLanguageOptions 1  ���>
�> 
spac o  ���=�= 0 fuinteractive fuInteractive 1  ���<
�< 
spac
 o  ���;�; "0 fuscriptoptions fuscriptOptions o      �:�: 0 command    l ���9�8�7�9  �8  �7    O �� I ���6�5�4
�6 .miscactvnull��� ��� null�5  �4   m  ���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��    O �� I ���3 �2
�3 .coredoscnull��� ��� ctxt  o  ���1�1 0 command  �2   m  ��!!�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��   "�0" L  ���/�/  �0  � #$# l ��%�.�-% = ��&'& o  ���,�, 0 fileextension fileExtension' m  ��(( �))  c o m p�.  �-  $ *�+* k  ��++ ,-, l ���*./�*  .   Open the comp   / �00    O p e n   t h e   c o m p- 121 r  ��343 b  ��565 b  ��787 b  ��9:9 b  ��;<; m  ��== �>>  o p e n   - a< 1  ���)
�) 
spac: o  ���(�( 0 
fusionpath 
fusionPath8 1  ���'
�' 
spac6 l ��?�&�%? n  ��@A@ 1  ���$
�$ 
strqA l ��B�#�"B n  ��CDC 1  ���!
�! 
psxpD o  ��� �  0 selectedfile selectedFile�#  �"  �&  �%  4 o      �� 0 command  2 EFE l ���GH�  G   display alert command   H �II ,   d i s p l a y   a l e r t   c o m m a n dF JKJ r  ��LML I ���N�
� .sysoexecTEXT���     TEXTN o  ���� 0 command  �  M 1      �
� 
rsltK OPO l ���QR�  Q   display alert result   R �SS *   d i s p l a y   a l e r t   r e s u l tP T�T L  ����  �  �+  @ k  ��UU VWV I ���X�
� .sysodisAaleR        TEXTX m  ��YY �ZZ x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  W [�[ L  ��\\ m  ��]] �^^ � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�  ��   � m   x {__�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � `a` l     ����  �  �  a bcb l     �de�  d    Add the language argument   e �ff 4   A d d   t h e   l a n g u a g e   a r g u m e n tc ghg l ��i��i r  ��jkj b  ��lml b  ��non m  ��pp �qq  - lo 1  ���
� 
spacm o  ���� 0 
fulanguage 
fuLanguagek o      �� &0 fulanguageoptions fuLanguageOptions�  �  h rsr l     �
�	��
  �	  �  s tut l     ����  �  �  u vwv l     �xy�  x @ : Run the script through a Terminal console view for output   y �zz t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u tw {|{ l  }��} r   ~~ b   ��� b   ��� b   ��� b   	��� b   ��� b   ��� o   �� 0 fuscriptpath fuscriptPath� 1  � 
�  
spac� o  ���� &0 fulanguageoptions fuLanguageOptions� 1  ��
�� 
spac� o  	
���� 0 fuinteractive fuInteractive� 1  ��
�� 
spac� o  ���� "0 fuscriptoptions fuscriptOptions o      ���� 0 command  �  �  | ��� l "������ O "��� I !������
�� .miscactvnull��� ��� null��  ��  � m  ���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  � ��� l #1������ O #1��� I )0�����
�� .coredoscnull��� ��� ctxt� o  ),���� 0 command  ��  � m  #&���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  � ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    1��  6��  I��  T��  ���  ���  ���  ���  ��� g�� {�� ��� �����  ��  ��  �  � I ;�� R������ ]�� ��� ��� ������� � � ��������������� � ��� � � �_����3��DP����_mw���������������������(=��Y��]p�� $0 fuscripthostname fuscriptHostname
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
�� .sysodisAaleR        TEXT��2�E�O��,�,E�O��,�,E�O�E�O�E�O����a a a mva ma a a  E` O_ a ,a   a E` Y !_ a ,a   a E` Y 	a E` Oa  ta !�%a "%E` #Oa $�%a %%�%a &%E` 'O�a (%E` )O_ a *  a +E` ,O_ #E` -Y,_ a .  a /E` ,O_ #E` -Y_ a 0  a 1E` ,O_ #E` -Y �_ a 2  a 3E` ,O_ 'E` -Y �_ a 4  a 5E` ,O_ 'E` -Y �_ a 6  ua 7E` ,Oa 8�%_ ,%E` 9O_ '�%a :%_ ;�,%a <%_ ;�,%a =%_ )%E` -O��%_ 9%�%�%�%_ -%E` >Oa ? *j @UOa ? 	_ >j AUOhY ?_ a B  )a C�%�%�%_ ;�,�,%E` >O_ >j DE` OhY a Ej FOa GUOa H�%_ ,%E` 9O��%_ 9%�%�%�%_ -%E` >Oa ? *j @UOa ? 	_ >j AU ascr  ��ޭ