   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.FileEncryption   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     �Name$  FileEncryption1�� � Title$ FileEncryption��$	��500��$	��880������  �� EndPoint$ 0.8,1&� �� 
StartPoint$ 0.8,0&� � SpreadMethod$ Repeat=�.���  � Color$ 	#FF2F3744��� $ 	#FF242A36�� � Offset$ 1Q�.��� .+��� $��
Ex-Encoder��$
��Left=�$��	10,10,0,0q�$	��Top=����	#FFE2E2E2$��17(�$��DemiBold"��� $
��Left=�$��25��$��
111,12,0,0q�$	��Top=�$��25��$��/Images/setting(1).png���� -    ��Name$ SaveLocationBTN��$
��Left=�$��32��$��
155,11,0,0q�$	��Top=�$��32��$!��../Images/folder-browse.png�� � Cursor$
 Hand���� -   	 ��Name$	 LookUpTextBox��$	��260��$
��Left=����	#FF2A385A���	#FF4B5573
 �� SelectionBrush
 �	#FFD8A459$�� ��
������� �� IsUndoEnabled$
 true�� �� MaxLines$ 1�� �� 	UndoLimit$ 0�� J� 	AllowDrop$ False��$��15(� �� 	MaxLength$	 100��$	��Top=�$��	10,72,0,0q�$��30���� $��Encryption Password��$
��Left=�$��	16,49,0,0q�$	��Top=����	#FFE2E2E2$��14(�$
��True���� -    ��Name$ SavePS��$��Save Password��$��
288,79,0,0q�
����������	#FF254477���	#FF254065$��14(�$
��Left=�$	��Top=��� -    ��Name$ USBListView��$��
0,105,0,30q�$��15(����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF15212D��$ 1Q�� $ 	#FF2D3441��$ 0Q� �� View �� .P��� $
��Name�� �� Width$ 50�� �� DisplayMemberBinding �� *Name+�� $
��Path��$	 350�� �� *Path+�� $��	File Type�� �� *
FileType+�� $��State�� �� *	FileState+�� $��Bytes�� �� *	FileBytes+�� -    ��Name$ Additm��$
��Left=�$��30��$	��180��$
 Hand��$	��ADD�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(�$��Bottom=��� -   $ Encrpt��$
��Left=�$��30��$	��185��$��	273,0,0,0q�$
 Hand��$��Encrypt�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(�$��Bottom=��� -   $ Decrypt��$
��Left=�$��30��$	��185��$��	458,0,0,0q�$
 Hand��$��Decrypt�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(�$��Bottom=��� -	   $ 	Removeitm��$��Right=�$��30��$	��180��$
 Hand��$��Remove�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(�$��Bottom=��� $��File Save Location: ��$
��Left=�$��
185,11,0,0q�$	��Top=����	#FFE2E2E2$
��True���� -
    ��Name$ FileSaveLocation��$��""��$
��Left=�$��
288,12,0,0q�$	��Top=����	#FFE2E2E2$
��True��