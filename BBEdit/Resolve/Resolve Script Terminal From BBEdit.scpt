FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / ) Fusion Script Terminal v2.0 - 2018-09-04     � 	 	 R   F u s i o n   S c r i p t   T e r m i n a l   v 2 . 0   -   2 0 1 8 - 0 9 - 0 4   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script grabs the foreground document from BBEdit and sends it to a Lua or Python interactive shell session via Fusion Studio/Resolve Studio + FuScript. If you select a Fusion comp it will be opened up in Fusion.     �  �   T h i s   s c r i p t   g r a b s   t h e   f o r e g r o u n d   d o c u m e n t   f r o m   B B E d i t   a n d   s e n d s   i t   t o   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   v i a   F u s i o n   S t u d i o / R e s o l v e   S t u d i o   +   F u S c r i p t .   I f   y o u   s e l e c t   a   F u s i o n   c o m p   i t   w i l l   b e   o p e n e d   u p   i n   F u s i o n .      l     ��  ��    � � If you select a Fusion .comp file it will be opened in a new tab in Fusion. If you select a Fusion macro .setting file it will be added to your current composite.     �  F   I f   y o u   s e l e c t   a   F u s i o n   . c o m p   f i l e   i t   w i l l   b e   o p e n e d   i n   a   n e w   t a b   i n   F u s i o n .   I f   y o u   s e l e c t   a   F u s i o n   m a c r o   . s e t t i n g   f i l e   i t   w i l l   b e   a d d e d   t o   y o u r   c u r r e n t   c o m p o s i t e .     !   l     �� " #��   " � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.    # � $ $�   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t . !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     �� , -��   , � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    - � . .L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 1 + Choose a hostname for the FuScript session    4 � 5 5 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n 2  6 7 6 l     8���� 8 r      9 : 9 m      ; ; � < <  l o c a l h o s t : o      ���� $0 fuscripthostname fuscriptHostname��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A 5 / Choose where the FuScript program is installed    B � C C ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d @  D E D l     �� F G��   F   Resolve Studio v15    G � H H &   R e s o l v e   S t u d i o   v 1 5 E  I J I l    K���� K r     L M L n    	 N O N 1    	��
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
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Get the current BBEdit file name    � � � � B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e �  � � � l   [ ����� � O    [ � � � k    Z � �  � � � l   �� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  ��� � Q    Z � � � � r    ( � � � e    & � � n    & � � � m   # %��
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
��   �  ��� � L   X Z����  ��  ��   � m     � �t                                                                                  R*ch  alis      PineHD                         BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Add a space character    � � � � ,   A d d   a   s p a c e   c h a r a c t e r �  � � � l  \ a ����� � r   \ a � � � m   \ _ � � � � �    � 1      ��
�� 
spac��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ) # Add the interactive shell argument    � � � � F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t �  � � � l     �� � ���   �    set fuInteractive to "-i"    � � � � 4   s e t   f u I n t e r a c t i v e   t o   " - i " �  � � � l  b i ����� � r   b i � � � m   b e � � � � �   � o      ���� 0 fuinteractive fuInteractive��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  j ����� � O   j � � � k   p � �  � � � l  p p�� � ���   �   Check the filetype    � � � � &   C h e c k   t h e   f i l e t y p e �  � � � r   p � � � � l  p � ����� � n   p � � � � J   t � � �  �  � 1   u y��
�� 
asty  �� 1   { ��
�� 
nmxt��   � 4   p t��
�� 
file o   r s���� 0 selectedfile selectedFile��  ��   � J        o      ���� 0 filetype fileType �� o      ���� 0 fileextension fileExtension��   �  l  � ���������  ��  ��   	
	 l  � �����   1 + Define the FuScript command line arguments    � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s
  l  � ���������  ��  ��    l  � �����     Resolve Studio    �    R e s o l v e   S t u d i o  r   � � b   � � b   � � m   � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " o   � ����� $0 fuscripthostname fuscriptHostname m   � � �   � " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ) ' o      ���� 0 pyscript pyScript !"! r   � �#$# b   � �%&% b   � �'(' b   � �)*) b   � �+,+ m   � �-- �.. L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   ", o   � ����� $0 fuscripthostname fuscriptHostname* m   � �// �00� " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ; r e s o l v e   =   b m d . s c r i p t a p p ( " R e s o l v e " ,   "( o   � ����� $0 fuscripthostname fuscriptHostname& m   � �11 �22 � " ) ; i f   r e s o l v e   ~ =   n i l   t h e n   r e s   =   r e s o l v e ; e l s e   p r i n t ( " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . " )   e n d ;$ o      �� 0 	luascript 	luaScript" 343 l  � ��~�}�|�~  �}  �|  4 565 l  � ��{78�{  7   Fusion Studio   8 �99    F u s i o n   S t u d i o6 :;: l  � ��z<=�z  < � � set pyScript to "-x 'from pprint import pprint;import BlackmagicFusion as bmd;fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");fu = fusion;app = fusion;comp = fusion.GetCurrentComp()'"   = �>>�   s e t   p y S c r i p t   t o   " - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' "; ?@? l  � ��yAB�y  A! set luaScript to "-x 'fusion = bmd.scriptapp(\"Fusion\", \"" & fuscriptHostname & "\");if fusion ~= nil then fu = fusion;app = fu;composition = fu.CurrentComp;comp = composition;SetActiveComp(comp) else print(\"[Error] Please open up the Fusion GUI before running this tool.\") end"   B �CC6   s e t   l u a S c r i p t   t o   " - x   ' f u s i o n   =   b m d . s c r i p t a p p ( \ " F u s i o n \ " ,   \ " "   &   f u s c r i p t H o s t n a m e   &   " \ " ) ; i f   f u s i o n   ~ =   n i l   t h e n   f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p )   e l s e   p r i n t ( \ " [ E r r o r ]   P l e a s e   o p e n   u p   t h e   F u s i o n   G U I   b e f o r e   r u n n i n g   t h i s   t o o l . \ " )   e n d "@ DED l  � ��x�w�v�x  �w  �v  E FGF r   � �HIH b   � �JKJ 1   � ��u
�u 
spacK m   � �LL �MM  'I o      �t�t  0 luascriptclose luaScriptCloseG NON l  � ��s�r�q�s  �r  �q  O PQP l  � ��pRS�p  R 7 1 Check if this is a Lua script or a Python script   S �TT b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p tQ U�oU Z   �VWXYV l  � �Z�n�mZ =  � �[\[ o   � ��l�l 0 fileextension fileExtension\ m   � �]] �^^  p y�n  �m  W k   � �__ `a` l  � ��kbc�k  b O I Run Python Scripts (You can manually force this to either Python 2 or 3)   c �dd �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 )a efe r   � �ghg m   � �ii �jj  p y 2h o      �j�j 0 
fulanguage 
fuLanguagef klk l  � ��imn�i  m   set fuLanguage to "py3"   n �oo 0   s e t   f u L a n g u a g e   t o   " p y 3 "l p�hp r   � �qrq o   � ��g�g 0 pyscript pyScriptr o      �f�f "0 fuscriptoptions fuscriptOptions�h  X sts l  � �u�e�du =  � �vwv o   � ��c�c 0 fileextension fileExtensionw m   � �xx �yy  p y 2�e  �d  t z{z k   � �|| }~} l  � ��b��b     Run Python 2 Scripts   � ��� *   R u n   P y t h o n   2   S c r i p t s~ ��� r   � ���� m   � ��� ���  - p y 2� o      �a�a 0 
fulanguage 
fuLanguage� ��`� r   � ���� o   � ��_�_ 0 pyscript pyScript� o      �^�^ "0 fuscriptoptions fuscriptOptions�`  { ��� l  ���]�\� =  ���� o   ��[�[ 0 fileextension fileExtension� m  �� ���  p y 3�]  �\  � ��� k  	�� ��� l 		�Z���Z  �   Run Python 3 Scripts   � ��� *   R u n   P y t h o n   3   S c r i p t s� ��� r  	��� m  	�� ���  p y 3� o      �Y�Y 0 
fulanguage 
fuLanguage� ��X� r  ��� o  �W�W 0 pyscript pyScript� o      �V�V "0 fuscriptoptions fuscriptOptions�X  � ��� l "��U�T� = "��� o  �S�S 0 fileextension fileExtension� m  !�� ���  l u a�U  �T  � ��� k  %8�� ��� l %%�R���R  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r  %,��� m  %(�� ���  l u a� o      �Q�Q 0 
fulanguage 
fuLanguage� ��P� r  -8��� b  -4��� o  -0�O�O 0 	luascript 	luaScript� o  03�N�N  0 luascriptclose luaScriptClose� o      �M�M "0 fuscriptoptions fuscriptOptions�P  � ��� l ;B��L�K� = ;B��� o  ;>�J�J 0 fileextension fileExtension� m  >A�� ���  e y e o n s c r i p t�L  �K  � ��� k  EX�� ��� l EE�I���I  �   Run Lua scripts   � ���     R u n   L u a   s c r i p t s� ��� r  EL��� m  EH�� ���  l u a� o      �H�H 0 
fulanguage 
fuLanguage� ��G� r  MX��� b  MT��� o  MP�F�F 0 	luascript 	luaScript� o  PS�E�E  0 luascriptclose luaScriptClose� o      �D�D "0 fuscriptoptions fuscriptOptions�G  � ��� l [b��C�B� = [b��� o  [^�A�A 0 fileextension fileExtension� m  ^a�� ���  s e t t i n g�C  �B  � ��� k  e��� ��� l ee�@���@  � . ( Open a Fusion Macro in the current comp   � ��� P   O p e n   a   F u s i o n   M a c r o   i n   t h e   c u r r e n t   c o m p� ��� r  el��� m  eh�� ���  l u a� o      �?�? 0 
fulanguage 
fuLanguage� ��� l mm�>�=�<�>  �=  �<  � ��� l mm�;���;  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� r  mz��� b  mv��� b  mr��� m  mp�� ���  - l� 1  pq�:
�: 
spac� o  ru�9�9 0 
fulanguage 
fuLanguage� o      �8�8 &0 fulanguageoptions fuLanguageOptions� ��� l {{�7�6�5�7  �6  �5  � � � r  {� b  {� b  {� b  {� b  {�	
	 b  {� b  {� b  {� o  {~�4�4 0 	luascript 	luaScript 1  ~�3
�3 
spac m  �� � 4 c o m p : P a s t e ( b m d . r e a d f i l e ( [ [ l ���2�1 n  �� 1  ���0
�0 
psxp o  ���/�/ 0 selectedfile selectedFile�2  �1  
 m  �� � B ] ] ) ) ; c o m p : P r i n t ( [ [ [ A d d i n g   M a c r o ]   l ���.�- n  �� 1  ���,
�, 
psxp o  ���+�+ 0 selectedfile selectedFile�.  �-   m  �� �  ] ] ) ; o  ���*�*  0 luascriptclose luaScriptClose o      �)�) "0 fuscriptoptions fuscriptOptions   l ���( �(   @ : Run the script through a Terminal console view for output     �!! t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t "#" r  ��$%$ b  ��&'& b  ��()( b  ��*+* b  ��,-, b  ��./. b  ��010 o  ���'�' 0 fuscriptpath fuscriptPath1 1  ���&
�& 
spac/ o  ���%�% &0 fulanguageoptions fuLanguageOptions- 1  ���$
�$ 
spac+ o  ���#�# 0 fuinteractive fuInteractive) 1  ���"
�" 
spac' o  ���!�! "0 fuscriptoptions fuscriptOptions% o      � �  0 command  # 232 l ������  �  �  3 454 O ��676 I �����
� .miscactvnull��� ��� null�  �  7 m  ��88�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  5 9:9 O ��;<; I ���=�
� .coredoscnull��� ��� ctxt= o  ���� 0 command  �  < m  ��>>�                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  : ?�? L  ����  �  � @A@ l ��B��B = ��CDC o  ���� 0 fileextension fileExtensionD m  ��EE �FF  c o m p�  �  A G�G k  �HH IJI l ���KL�  K   Open the comp   L �MM    O p e n   t h e   c o m pJ NON r  ��PQP b  ��RSR b  ��TUT b  ��VWV b  ��XYX m  ��ZZ �[[  o p e n   - aY 1  ���
� 
spacW o  ���� 0 
fusionpath 
fusionPathU 1  ���
� 
spacS l ��\��\ n  ��]^] 1  ���

�
 
strq^ l ��_�	�_ n  ��`a` 1  ���
� 
psxpa o  ���� 0 selectedfile selectedFile�	  �  �  �  Q o      �� 0 command  O bcb l ���de�  d   display alert command   e �ff ,   d i s p l a y   a l e r t   c o m m a n dc ghg r  ��iji I ���k�
� .sysoexecTEXT���     TEXTk o  ���� 0 command  �  j 1      � 
�  
rslth lml l   ��no��  n   display alert result   o �pp *   d i s p l a y   a l e r t   r e s u l tm q��q L   ����  ��  �  Y k  rr sts I ��u��
�� .sysodisAaleR        TEXTu m  vv �ww x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .��  t x��x L  yy m  zz �{{ � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .��  �o   � m   j m||�                                                                                  MACS  alis    4  PineHD                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � }~} l     ��������  ��  ��  ~ � l     ������  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� l  ������ r   ��� b  ��� b  ��� m  �� ���  - l� 1  ��
�� 
spac� o  ���� 0 
fulanguage 
fuLanguage� o      ���� &0 fulanguageoptions fuLanguageOptions��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� l !@������ r  !@��� b  !<��� b  !6��� b  !4��� b  !0��� b  !.��� b  !*��� b  !(��� b  !$��� o  !"���� 0 fuscriptpath fuscriptPath� 1  "#��
�� 
spac� o  $'���� &0 fulanguageoptions fuLanguageOptions� 1  ()��
�� 
spac� o  *-���� 0 fuinteractive fuInteractive� 1  ./��
�� 
spac� o  03���� "0 fuscriptoptions fuscriptOptions� 1  45��
�� 
spac� l 6;������ n  6;��� 1  9;��
�� 
strq� l 69������ n  69��� 1  79��
�� 
psxp� o  67���� 0 selectedfile selectedFile��  ��  ��  ��  � o      ���� 0 command  ��  ��  � ��� l     ��������  ��  ��  � ��� l AM������ O AM��� I GL������
�� .miscactvnull��� ��� null��  ��  � m  AD���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  � ��� l N\������ O N\��� I T[�����
�� .coredoscnull��� ��� ctxt� o  TW���� 0 command  ��  � m  NQ���                                                                                      @ alis    0  PineHD                         BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  � ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    \��  6��  I��  T��  ���  ���  ���  ���  ��� ��� ��� ��� �����  ��  ��  �  � K ;�� R������ ]�� ��� ����������� ����� ������������� � ���|������������-/1��L��]i����x��������������8����EZ����v��z��� $0 fuscripthostname fuscriptHostname
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
�� .sysodisAaleR        TEXT��]�E�O��,�,E�O��,�,E�O�E�O� @ *�k/�,EE�W 1X  a E` O_ a a kva ka ka a a  OhUOa E�Oa E` Oa �*��/[a ,\[a ,\ZlvE[a  k/E` !Z[a  l/E` "ZOa #�%a $%E` %Oa &�%a '%�%a (%E` )O�a *%E` +O_ "a ,  a -E` .O_ %E` /Y0_ "a 0  a 1E` .O_ %E` /Y_ "a 2  a 3E` .O_ %E` /Y �_ "a 4  a 5E` .O_ )_ +%E` /Y �_ "a 6  a 7E` .O_ )_ +%E` /Y �_ "a 8  sa 9E` .Oa :�%_ .%E` ;O_ )�%a <%��,%a =%��,%a >%_ +%E` /O��%_ ;%�%_ %�%_ /%E` ?Oa @ *j AUOa @ 	_ ?j BUOhY =_ "a C  'a D�%�%�%��,�,%E` ?O_ ?j EE` FOhY a Gj HOa IUOa J�%_ .%E` ;O��%_ ;%�%_ %�%_ /%�%��,�,%E` ?Oa @ *j AUOa @ 	_ ?j BU ascr  ��ޭ