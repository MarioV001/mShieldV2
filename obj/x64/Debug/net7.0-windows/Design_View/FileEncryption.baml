   M S B A M L   `   `   `  ����C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2  5   	       mShield2.FileEncryption   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:mShield2     5   	   -   5          �Name$  FileEncryption1��5   	    � Title$ FileEncryption��5   	   $	��500��6    $	��880��6-   ��5	      �� 5
   
    �� EndPoint$ 0.8,1&�6    �� 
StartPoint$ 0.8,0&�6/    � SpreadMethod$ Repeat=�6B   .��5      �  � Color$ 	#FF2F3744��6   � 5      $ 	#FF242A36��6    � Offset$ 1Q�6-   5      .��5      � .+�5   
   �� $��
Ex-Encoder��6   $
��Left=�6%   $��	10,10,0,0q�6@   $	��Top=�6S   ���	#FFE2E2E2$��17(�6�   $��DemiBold"�6�   �� 5   
   $
��Left=�6   $��25��6+   $��
111,12,0,0q�67   $	��Top=�6K   $��25��6c   $��/Images/setting(1).png��6n   �� 5   
   -   5         ��Name$ SaveLocationBTN��5      $
��Left=�6)   $��32��6D   $��
155,11,0,0q�6P   $	��Top=�6d   $��32��6|   $!��../Images/folder-browse.png��6�    � Cursor$
 Hand��6�   6�   �� 5   
   -   5        	 ��Name$	 LookUpTextBox��5      $	��260��6)   $
��Left=�65   ���	#FF2A385A���	#FF4B5573
 �� SelectionBrush
 �	#FFD8A459$�� ��6�   
������� �� IsUndoEnabled$
 true��6�    �� MaxLines$ 1��6�    �� 	UndoLimit$ 0��6�    J� 	AllowDrop$ False��6�   $��15(�6�    �� 	MaxLength$	 100��6  $	��Top=�6  $��	10,72,0,0q�6-  $��30��6@  �� 5   
   $��Encryption Password��6   $
��Left=�6.   $��	16,49,0,0q�6I   $	��Top=�6\   ���	#FFE2E2E2$��14(�6�   $
��True��6�   �� 5   
   -   5         ��Name$ SavePS��5      $��Save Password��6#   $��
288,79,0,0q�6;   
����������	#FF254477���	#FF254065$��14(�6�   $
��Left=�6�   $	��Top=�6�   �� 5   
   -   5         ��Name$ USBListView��5      $��
0,105,0,30q�6(   $��15(�6<   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5      � $ 	#FF15212D��6#   $ 1Q�65   � 5      $ 	#FF2D3441��6#   $ 0Q�65   5       �� View 5      �� 5      .P�5      �� $
��Name��6%    �� Width$ 50��63    �� DisplayMemberBinding 6>   �� *Name+�� 5       $
��Path��6%   $	 350��63    6?   �� *Path+�� 5!      $��	File Type��6%    68   �� *
FileType+�� 5"      $��State��6%    64   �� *	FileState+�� 5#      $��Bytes��6%    64   �� *	FileBytes+5$      5&      �� 5'   
   -   5         ��Name$ Additm��5'      $
��Left=�6!   $��30��6<   $	��180��6H   $
 Hand��6T   $	��ADD��6b   ���	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�6�   $��14(�6�   $��Bottom=�6�   �� 5(   
   -   5        $ Encrpt��5(      $
��Left=�6!   $��30��6<   $	��185��6H   $��	273,0,0,0q�6T   $
 Hand��6g   $��Encrypt��6u   ���	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�6�   $��14(�6�   $��Bottom=�6  �� 5)   
   -   5        $ Decrypt��5)      $
��Left=�6"   $��30��6=   $	��185��6I   $��	458,0,0,0q�6U   $
 Hand��6h   $��Decrypt��6v   ���	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�6�   $��14(�6�   $��Bottom=�6	  �� 5*   
   -	   5        $ 	Removeitm��5*      $��Right=�6$   $��30��6@   $	��180��6L   $
 Hand��6X   $��Remove��6f   ���	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�6�   $��14(�6�   $��Bottom=�6�   �� 5+   
   $��File Save Location: ��6   $
��Left=�6/   $��
185,11,0,0q�6J   $	��Top=�6^   ���	#FFE2E2E2$
��True��6�   �� 5,   
   -
   5         ��Name$ FileSaveLocation��5,      $��""��6*   $
��Left=�6A   $��
288,12,0,0q�6\   $	��Top=�6p   ���	#FFE2E2E2$
��True��6�   5.      5/      