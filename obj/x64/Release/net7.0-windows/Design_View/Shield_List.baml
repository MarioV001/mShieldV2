   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.Shield_List   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     � Title$  Process List��$	��700��$	��680�� � Icon$ ../Images/shield.png��$��Disabled=� � WindowStartupLocation$ CenterOwner=�$	��920������  �� EndPoint$ 0.8,1&� �� 
StartPoint$ 0.8,0&� � SpreadMethod$ Repeat=�.���  � Color$ 	#FF2F3744��� $ 	#FF242A36�� � Offset$ 1Q�.��� .+��� ���	#FF566679$��0,0,4,0q�$
��Left=�$
��auto��$	��350��$��Visible=�$��0,30,0,0q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF0B476D��� $ 	#FF03263C��$ 1Q�._��� -    ��Name$ ScrolLViewerCTRL��$��Visible=�$��Disabled=�.��� -   	 �Name$	 	ItemsGrid��$��Center=�$	��334��$��	0,10,0,10q�$
��auto��$��Visible=��� -   
 ��Name$
 	TotalProc��$��Label��$
��Left=�$��20��$��
353,27,0,0q�$	��Top=�$	��181��
�������$��0,0,0,0q��� ���	#FF566679$��0,0,4,0q�$
��Left=�$��30��$	��Top=�$	��350�����	#FF385D7F._�� .+��� -   $��../Images/setting(1).png��$
��Left=�$��23��$��23��$��3,0,0,0q� � Cursor$
 Hand�� � ContextMenu �� .@�m� -    m�Name$ SavedAppsCheck��$!��Saved/Approved Applications�� m� IsCheckable$
 True��m� -   $ AllRunningChecker��$��All Running Processes��$
 True��m� -   $ OnlineDBCheck��$"��ExDevelopers Online Database��$
 True���� m� $��Quick Data Sync�� m� 	IsChecked$
 True���� m� -	   $ 
FilterName��$��Filter By Name��$
 True��$
 Hand��m� -
   $ FilterAllowed��$��Filter By Allowed��$
 Hand���� -    ��Name$ LookUpTextBox��$	��260��$
��Left=����	#FF2A385A���	#FF4B5573 �� SelectionBrush �	#FFD8A459$�� ��
������� �� IsUndoEnabled$
 true�� �� MaxLines$ 1�� �� 	UndoLimit$ 0�� J� 	AllowDrop$ False��$��15(� �� 	MaxLength$	 100��$��Center=�$��30,0,0,0q�$��25���� -    ��Name$ SubmitButton��$��Right=�$��58��$
 Hand��$��Search�����	#FF3A73A0���	#FFEDEDED$��DemiBold"�$��14(�$��Center=�$��25�����	#FF4B5573$��0,1,1,1q�� -    �Name$ ProgressBar��$��10��$��473,15,17,0q�$	��Top=����	#FFD3E6FF���	#FF345F80$
��Auto������ $	 1,1&�$	 0,0&�.��� $ 	#FF15DA7B��$ 1Q�� $ 	#FF196942��$ 0Q��� -   $
 TotalProc_Copy��$��Process Info��$
��Left=�$��32��$��	355,0,0,0q�$	��Top=�$	��116��
�������$
��Bold"�$��18(��� ���	#FF566679$��1,1,0,1q�$	��164��$��
396,71,0,0q�$	��Top=� �� CornerRadius$ 5,0,0,5������ $ 1,0.8&�$	 0,0&� �� Opacity$	 0.7Q�.��� $ 	#FF171717��� $ 	#FF14213C��$ 0.849Q�._��  � RowDefinitions �� $��30 ��� $��30 ��� $��30 ��� $��5 ��� $��40 �.+��� -   $
 ProcNameLabel��$��0��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Name: ���� -   $
 ProcAllowedLabel��$��1��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��	Allowed: ���� -   $
 ProcRespondingLabel��$��2��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Responding: ���� $��3��$��Stretch=�$��Stretch=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF30353A��� $ 	#FF3D444A��$ 1Q��� -   $
 ProcDescLabel��$��4��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Description: ���� -    ��Name$ TraceProcBoarder�����	#FF566679$��1,1,0,1q�$	��190��$��396,281,0,0q�$	��Top=�$ 5,0,0,5������ $ 1,0.8&�$	 0,0&�$	 0.7Q�.��� $ 	#FF171717��� $ 	#FF14213C��$ 0.849Q�._��  �� $��27 ��� $��25 ��� $��5 ��� $��30 ��� $��25 ��� $��5 ��� $��27 ��� $��25 ��� $��5 �.+��� $��0��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Start Path:���� -   $ StartPathTextBox��$��1��$��Stretch=����	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��
�������$ False��$ 1��$ 0��$ False��$��15(�$	 500�� �� 
IsReadOnly$
 True��$��Center=�$��25���� $��2��$��Stretch=�$��Stretch=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF30353A��� $ 	#FF3D444A��$ 1Q��� $��3��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Original File Name:���� -   $ OGFileNameTextBox��$��4��$��Stretch=����	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��
�������$ False��$ 1��$ 0��$ False��$��15(�$	 500��$
 True��$��Center=�$��25���� $��5��$��Stretch=�$��Stretch=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF30353A��� $ 	#FF3D444A��$ 1Q��� $��6��
�������$
��Left=�$��Center=�$��15(�$��DemiBold"�$��Command Line: ���� -   $ ArgumentsTextBox��$��7��$��Stretch=����	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��
�������$ False��$ 1��$ 0��$ False��$��15(�$	 500��$
 True��$��Center=�$��25���� -   $ ControlButtons��$��30�����	#FF566679$��1,1,0,1q�$��396,480,0,0q�$	��Top=�$ 5,0,0,5��._�� -   $	 GridID��.+��� -   $ 	AcceptBTN��$
��Left=�$	��138��$��5,0,0,0q�$��23�����	#FF020D1D$
 Hand������ $ 0.5,1&�$ 0.5,0&�$	 Pad=�$
 0.93Q�.��� $ 	#FF0A3B61��$
 0.55Q�� $ 	#FF1F4873��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Accept��$��0,0,0,-2q���Z� �� -   $ 
DeclineBTN��$��Right=�$	��138��$��5,0,0,0q�$��23�����	#FF020D1D$
 Hand������ $ 0.5,1&�$ 0.5,0&�$	 Pad=�$
 0.93Q�.��� $ 	#FF0A3B61��$
 0.55Q�� $ 	#FF1F4873��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Decline��$��0,0,0,-2q���Z� �� -   $ 	EndOfList��$��	352,0,0,5q�$��Bottom=�$
��Left=�$��35��$��35��$
 Hand��._��� -    ��Name$ DownListIMG�� J� Opacity$	 0.6Q�$
��Left=�$��35������   �� 	UriSource$  /Images/GO.png?�! �� Rotation$! Rotate90=�