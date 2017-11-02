FasdUAS 1.101.10   ��   ��    k             l     ��  ��    A ; Fusion Script Terminal Interactive Shell v1.0 - 2017-11-02     � 	 	 v   F u s i o n   S c r i p t   T e r m i n a l   I n t e r a c t i v e   S h e l l   v 1 . 0   -   2 0 1 7 - 1 1 - 0 2   
  
 l     ��  ��    6 0 By Andrew Hazedlden <andrew@andrewhazelden.com>     �   `   B y   A n d r e w   H a z e d l d e n   < a n d r e w @ a n d r e w h a z e l d e n . c o m >      l     ��������  ��  ��        l     ��  ��     	 Overview     �      O v e r v i e w      l     ��  ��    � � This script opens a Lua or Python interactive shell session using Fusion Studio + FuScript. If you don't select a script language in the dialog after 8 seconds Lua will be chosen as the default option.     �  �   T h i s   s c r i p t   o p e n s   a   L u a   o r   P y t h o n   i n t e r a c t i v e   s h e l l   s e s s i o n   u s i n g   F u s i o n   S t u d i o   +   F u S c r i p t .   I f   y o u   d o n ' t   s e l e c t   a   s c r i p t   l a n g u a g e   i n   t h e   d i a l o g   a f t e r   8   s e c o n d s   L u a   w i l l   b e   c h o s e n   a s   t h e   d e f a u l t   o p t i o n .      l     ��  ��    � � The fusion:, fu:, app:, and comp: pointers are configured and the active comp is linked to automatically. This means you are capable of connect to the Fusion comp or run a UI Manger based script.     �  �   T h e   f u s i o n : ,   f u : ,   a p p : ,   a n d   c o m p :   p o i n t e r s   a r e   c o n f i g u r e d   a n d   t h e   a c t i v e   c o m p   i s   l i n k e d   t o   a u t o m a t i c a l l y .   T h i s   m e a n s   y o u   a r e   c a p a b l e   o f   c o n n e c t   t o   t h e   F u s i o n   c o m p   o r   r u n   a   U I   M a n g e r   b a s e d   s c r i p t .     !   l     �� " #��   " � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    # � $ $L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     �� ' (��   ' � � ---------------------------------------------------------------------------------------------------------------------------------------------------------------------    ( � ) )L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 1 + Choose a hostname for the FuScript session    / � 0 0 V   C h o o s e   a   h o s t n a m e   f o r   t h e   F u S c r i p t   s e s s i o n -  1 2 1 l     3���� 3 r      4 5 4 m      6 6 � 7 7  l o c a l h o s t 5 o      ���� $0 fuscripthostname fuscriptHostname��  ��   2  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < 5 / Choose where the FuScript program is installed    = � > > ^   C h o o s e   w h e r e   t h e   F u S c r i p t   p r o g r a m   i s   i n s t a l l e d ;  ? @ ? l    A���� A r     B C B n    	 D E D 1    	��
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
spac��  ��   i  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s + % Ask If you want to run Python or Lua    t � u u J   A s k   I f   y o u   w a n t   t o   r u n   P y t h o n   o r   L u a r  v w v l   7 x���� x r    7 y z y l   3 {���� { I   3�� | }
�� .sysodlogaskr        TEXT | m     ~ ~ �   t W h a t   S c r i p t i n g   l a n g u a g e   d o   y o u   w a n t   t o   u s e   w i t h   F u S c r i p t ?   } �� � �
�� 
disp � m    ��
�� stic    � �� � �
�� 
btns � J    # � �  � � � m     � � � � �  P y t h o n   2 �  � � � m     � � � � �  P y t h o n   3 �  ��� � m    ! � � � � �  L u a��   � �� � �
�� 
dflt � m   & '����  � �� ���
�� 
givu � m   * -���� ��  ��  ��   z o      ���� 0 dialogresult dialogResult��  ��   w  � � � l  8 o ����� � Z   8 o � � � � � =  8 C � � � n   8 ? � � � 1   ; ?��
�� 
bhit � 1   8 ;��
�� 
rslt � m   ? B � � � � �  P y t h o n   2 � r   F M � � � m   F I � � � � �  p y 2 � o      ���� 0 fileextension fileExtension �  � � � =  P [ � � � n   P W � � � 1   S W��
�� 
bhit � 1   P S��
�� 
rslt � m   W Z � � � � �  P y t h o n   3 �  ��� � r   ^ e � � � m   ^ a � � � � �  p y 3 � o      ���� 0 fileextension fileExtension��   � r   h o � � � m   h k � � � � �  l u a � o      ���� 0 fileextension fileExtension��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  p\ ����� � O   p\ � � � k   v[ � �  � � � l  v v�� � ���   � 1 + Define the FuScript command line arguments    � � � � V   D e f i n e   t h e   F u S c r i p t   c o m m a n d   l i n e   a r g u m e n t s �  � � � r   v � � � � b   v  � � � b   v { � � � m   v y � � � � � � - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   y z���� $0 fuscripthostname fuscriptHostname � m   { ~ � � � � � v " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) ' � o      ���� 0 pyscript pyScript �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � L - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " � o   � ����� $0 fuscripthostname fuscriptHostname � m   � � � � � � � � " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) ' � o      ���� 0 	luascript 	luaScript �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 7 1 Check if this is a Lua script or a Python script    � � � � b   C h e c k   i f   t h i s   i s   a   L u a   s c r i p t   o r   a   P y t h o n   s c r i p t �  ��� � Z   �[ � � � � � l  � � ����� � =  � � � � � o   � ����� 0 fileextension fileExtension � m   � � � � � � �  p y��  ��   � k   � � � �  � � � l  � ��� � ���   � O I Run Python Scripts (You can manually force this to either Python 2 or 3)    � � � � �   R u n   P y t h o n   S c r i p t s   ( Y o u   c a n   m a n u a l l y   f o r c e   t h i s   t o   e i t h e r   P y t h o n   2   o r   3 ) �  � � � r   � � � � � m   � � � � � � �  p y 2 � o      ���� 0 
fulanguage 
fuLanguage �  � � � l  � ��� � ���   �   set fuLanguage to "py3"    � �   0   s e t   f u L a n g u a g e   t o   " p y 3 " � �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��   �  l  � ����� =  � � o   � ����� 0 fileextension fileExtension m   � �		 �

  p y 2��  ��    k   � �  l  � �����     Run Python 2 Scripts    � *   R u n   P y t h o n   2   S c r i p t s  r   � � m   � � �  p y 2 o      ���� 0 
fulanguage 
fuLanguage �� r   � � o   � ����� 0 pyscript pyScript o      ���� "0 fuscriptoptions fuscriptOptions��    l  � ����� =  � �  o   � ����� 0 fileextension fileExtension  m   � �!! �""  p y 3��  ��   #$# k   � �%% &'& l  � ���()��  (   Run Python 3 Scripts   ) �** *   R u n   P y t h o n   3   S c r i p t s' +,+ r   � �-.- m   � �// �00  p y 3. o      ���� 0 
fulanguage 
fuLanguage, 1��1 r   � �232 o   � ����� 0 pyscript pyScript3 o      ���� "0 fuscriptoptions fuscriptOptions��  $ 454 l  � �6����6 =  � �787 o   � ����� 0 fileextension fileExtension8 m   � �99 �::  l u a��  ��  5 ;<; k   � �== >?> l  � ���@A��  @   Run Lua scripts   A �BB     R u n   L u a   s c r i p t s? CDC r   � �EFE m   � �GG �HH  l u aF o      ���� 0 
fulanguage 
fuLanguageD I��I r   � �JKJ o   � ����� 0 	luascript 	luaScriptK o      ���� "0 fuscriptoptions fuscriptOptions��  < LML l 	N����N = 	OPO o  ���� 0 fileextension fileExtensionP m  QQ �RR  e y e o n s c r i p t��  ��  M STS k  UU VWV l ��XY��  X   Run Lua scripts   Y �ZZ     R u n   L u a   s c r i p t sW [\[ r  ]^] m  __ �``  l u a^ o      ���� 0 
fulanguage 
fuLanguage\ a��a r  bcb o  �� 0 	luascript 	luaScriptc o      �~�~ "0 fuscriptoptions fuscriptOptions��  T ded l %f�}�|f = %ghg o  !�{�{ 0 fileextension fileExtensionh m  !$ii �jj  c o m p�}  �|  e k�zk k  (Lll mnm l ((�yop�y  o   Open the comp   p �qq    O p e n   t h e   c o m pn rsr r  (=tut b  (9vwv b  (1xyx b  (/z{z b  (-|}| m  (+~~ �  o p e n   - a} 1  +,�x
�x 
spac{ o  -.�w�w 0 
fusionpath 
fusionPathy 1  /0�v
�v 
spacw l 18��u�t� n  18��� 1  68�s
�s 
strq� l 16��r�q� n  16��� 1  46�p
�p 
psxp� o  14�o�o 0 selectedfile selectedFile�r  �q  �u  �t  u o      �n�n 0 command  s ��� l >>�m���m  �   display alert command   � ��� ,   d i s p l a y   a l e r t   c o m m a n d� ��� r  >I��� I >E�l��k
�l .sysoexecTEXT���     TEXT� o  >A�j�j 0 command  �k  � 1      �i
�i 
rslt� ��� l JJ�h���h  �   display alert result   � ��� *   d i s p l a y   a l e r t   r e s u l t� ��g� L  JL�f�f  �g  �z   � k  O[�� ��� I OV�e��d
�e .sysodisAaleR        TEXT� m  OR�� ��� x P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�d  � ��c� L  W[�� m  WZ�� ��� � E r r o r :   P l e a s e   s e l e c t   a   P y t h o n   o r   L u a   f i l e   t h e n   r u n   t h i s   t o o l   a g a i n .�c  ��   � m   p s���                                                                                  MACS  alis    b  PineHD                     ��L�H+   ��
Finder.app                                                      (UԿ�        ����  	                CoreServices    ��v�      ԿD     �� �� ��  0PineHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    P i n e H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � ��� l     �b�a�`�b  �a  �`  � ��� l     �_���_  �    Add the language argument   � ��� 4   A d d   t h e   l a n g u a g e   a r g u m e n t� ��� l ]j��^�]� r  ]j��� b  ]f��� b  ]b��� m  ]`�� ���  - l� 1  `a�\
�\ 
spac� o  be�[�[ 0 
fulanguage 
fuLanguage� o      �Z�Z &0 fulanguageoptions fuLanguageOptions�^  �]  � ��� l     �Y�X�W�Y  �X  �W  � ��� l     �V���V  � ) # Add the interactive shell argument   � ��� F   A d d   t h e   i n t e r a c t i v e   s h e l l   a r g u m e n t� ��� l kr��U�T� r  kr��� m  kn�� ���  - i� o      �S�S 0 fuinteractive fuInteractive�U  �T  � ��� l     �R�Q�P�R  �Q  �P  � ��� l     �O���O  � @ : Run the script through a Terminal console view for output   � ��� t   R u n   t h e   s c r i p t   t h r o u g h   a   T e r m i n a l   c o n s o l e   v i e w   f o r   o u t p u t� ��� l s���N�M� r  s���� b  s���� b  s���� b  s���� b  s|��� b  sz��� b  sv��� o  st�L�L 0 fuscriptpath fuscriptPath� 1  tu�K
�K 
spac� o  vy�J�J &0 fulanguageoptions fuLanguageOptions� 1  z{�I
�I 
spac� o  |�H�H 0 fuinteractive fuInteractive� 1  ���G
�G 
spac� o  ���F�F "0 fuscriptoptions fuscriptOptions� o      �E�E 0 command  �N  �M  � ��� l ����D�C� O ����� I ���B�A�@
�B .miscactvnull��� ��� null�A  �@  � m  �����                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �D  �C  � ��� l ����?�>� O ����� I ���=��<
�= .coredoscnull��� ��� ctxt� o  ���;�; 0 command  �<  � m  �����                                                                                      @ alis    Z  PineHD                     ��L�H+   	>Terminal.app                                                    	�Խ"        ����  	                	Utilities     ��v�      ԽGb     	> �  ,PineHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    P i n e H D  #Applications/Utilities/Terminal.app   / ��  �?  �>  � ��:� l     �9�8�7�9  �8  �7  �:       �6�� 6�� m� ���G�����5�4�6  � �3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$
�3 .aevtoappnull  �   � ****�2 $0 fuscripthostname fuscriptHostname�1 0 fuscriptpath fuscriptPath�0 0 
fusionpath 
fusionPath
�/ 
spac�. 0 dialogresult dialogResult�- 0 fileextension fileExtension�, 0 pyscript pyScript�+ 0 	luascript 	luaScript�* 0 
fulanguage 
fuLanguage�) "0 fuscriptoptions fuscriptOptions�( &0 fulanguageoptions fuLanguageOptions�' 0 fuinteractive fuInteractive�& 0 command  �%  �$  � �#��"�!��� 
�# .aevtoappnull  �   � ****� k    ���  1��  ?��  J��  h��  v��  ���  ��� ��� ��� ��� ��� ���  �"  �!  �  � @ 6� H��� S� m� ~��� � � �������� � �� � � �� � �� � �� � ���
	!/9GQ_i~�	������������� $0 fuscripthostname fuscriptHostname
� 
psxp
� 
strq� 0 fuscriptpath fuscriptPath� 0 
fusionpath 
fusionPath
� 
spac
� 
disp
� stic   
� 
btns
� 
dflt
� 
givu� 
� .sysodlogaskr        TEXT� 0 dialogresult dialogResult
� 
rslt
� 
bhit� 0 fileextension fileExtension� 0 pyscript pyScript� 0 	luascript 	luaScript� 0 
fulanguage 
fuLanguage�
 "0 fuscriptoptions fuscriptOptions�	 0 selectedfile selectedFile� 0 command  
� .sysoexecTEXT���     TEXT
� .sysodisAaleR        TEXT� &0 fulanguageoptions fuLanguageOptions� 0 fuinteractive fuInteractive
� .miscactvnull��� ��� null
� .coredoscnull��� ��� ctxt� ��E�O��,�,E�O��,�,E�O�E�O������a mva ma a a  E` O_ a ,a   a E` Y !_ a ,a   a E` Y 	a E` Oa  �a �%a  %E` !Oa "�%a #%E` $O_ a %  a &E` 'O_ !E` (Y �_ a )  a *E` 'O_ !E` (Y �_ a +  a ,E` 'O_ !E` (Y w_ a -  a .E` 'O_ $E` (Y [_ a /  a 0E` 'O_ $E` (Y ?_ a 1  )a 2�%�%�%_ 3�,�,%E` 4O_ 4j 5E` OhY a 6j 7Oa 8UOa 9�%_ '%E` :Oa ;E` <O��%_ :%�%_ <%�%_ (%E` 4Oa = *j >UOa = 	_ 4j ?U� ��� � ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t '� �   \ ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p '� �
� 
bhit �  L u a � ����
�  
gavu
�� boovfals��  � �F - x   ' f r o m   p p r i n t   i m p o r t   p p r i n t ; i m p o r t   B l a c k m a g i c F u s i o n   a s   b m d ; f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u s i o n ; c o m p   =   f u s i o n . G e t C u r r e n t C o m p ( ) '� � - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) '� �  - l   l u a� �� ' / A p p l i c a t i o n s / B l a c k m a g i c   F u s i o n   9 / F u s i o n . a p p / C o n t e n t s / M a c O S / f u s c r i p t '   - l   l u a   - i   - x   ' f u s i o n   =   b m d . s c r i p t a p p ( " F u s i o n " ,   " l o c a l h o s t " ) ; f u   =   f u s i o n ; a p p   =   f u ; c o m p o s i t i o n   =   f u . C u r r e n t C o m p ; c o m p   =   c o m p o s i t i o n ; S e t A c t i v e C o m p ( c o m p ) '�5  �4  ascr  ��ޭ