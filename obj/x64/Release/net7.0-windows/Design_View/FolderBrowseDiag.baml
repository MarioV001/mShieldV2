   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.FolderBrowseDiag   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     � Title$  Folder Browse Diag��$	��532��$	��920������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF1B2A37�� � Offset$ 0Q�� $ 	#FF191919��$ 1Q�.��� $��Stretch=�$��Stretch=� � ColumnDefinitions �� $	��17* ��� $
��783* �.+��� ���	#FF0D2E40$��5,0,0,0q�$��Stretch=�$��33��$	��Top=�$��2������ $ 0.5,1&�$ 0.5,0&� �� Opacity$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._�� .+��� -    ��Name$ LookUpTextBox�����	#FF314150 �� SelectionBrush �	#FFD8A459$�� ��
�������	 �� IsUndoEnabled$
	 true��
 �� MaxLines$
 1�� �� 	UndoLimit$ 0�� J� 	AllowDrop$ False��$��18(� �� 	MaxLength$	 100��$��Center=�$��	75,5,46,0q�$��28�����	#FF1F2933�� -    ��Name$ 
BackButton��$
��Left=�$��28��$	��Top=�$��28��$��/Images/back.png��$��2��$��0,5,0,0q� � Cursor$
 Hand���� -   $ ForwardButton��$
��Left=�$��28��$	��Top=�$��28��$��/Images/FORWARD.png��$��1��$��32,5,0,0q��� -   $ Navigate��$��Right=�$��28��$	��Top=�$��28��$��/Images/GO.png��$��1��$��0,5,5,0q�$
 Hand���� -    ��Name$ FileBrowseList��$��Disabled=�$��195,38,4,66q����	#66191919���	#66191919
�������$��1������ *TrackCollection+���� .R��  � Orientation$ 
Horizontal=����� .R���  �� Orientation$ Vertical=�$��Stretch=�$��Stretch=�.+��� $��Stretch=�$	��Top=�$��UniformToFill=�$��65��$��65������ *	ImageData+�� $��Stretch=�$��Bottom=����� *
FolderName+�� ���	#FF566679$��0,0,4,0q�$
��Left=�$
��auto��$	��210��$��Visible=�$��	0,38,0,66q�$��2������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#7F3B99CA��$ 0Q�� $ 	#99253B50��$ 1Q�._��� $
��Auto=�$��Disabled=�.��� -    �Name$ 
ItemsGridX��$��Stretch=�$��	0,10,0,10q�$
��auto��$��Visible=��� -    ��Name$ 	FooterNav�����	#FF2D394E$��	0,0.5,0,0q� J� Opacity$	 0.8Q�$��61��$��Bottom=�$
��auto��$��2������ $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._�� .+��� -	   $ CancelButton�����	#FF2D394E$	��2.5q� �� CornerRadius$ 	0,10,10,0��$��Right=�$	��157��$��35��$��Bottom=�$
 Hand��$��0,0,3,3q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��4,2,0,0q�.+�� $
��auto�� �� $��35 ��� $
��auto �.+��� $��0��$��/Images/cross.png��$��25��$��25��$	��Top=��� $��1��$��Cancel��$��Center=�
�������$��14(�$	��Top=��� -
   $ SelectButton�����	#FF2D394E$	��2.5q�$ 	10,0,0,10��$��Right=�$	��157��$��35��$��Bottom=�$
 Hand��$��	0,0,160,3q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��4,2,0,0q�.+�� $
��auto�� �� $��35 ��� $
��auto �.+��� $��0��$��/Images/choose.png��$��25��$��25��$	��Top=��� $��1��$��Select Folder��$��Center=�
�������$��14(�$	��Top=��� $��Folder:��$
��Left=�$	��Top=�
�������$��66,0,0,0q��� -    ��Name$ FolderNameLabel��$��/��$
��Left=�$	��Top=�
�������$��	105,0,0,0q�