   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2  "    mShield2.DataSelectionScreen   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     � Title$  Data Source Selection��$	��220��$	��540��$��Disabled=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�����  �� EndPoint$ 0.8,1&� �� 
StartPoint$ 0.8,0&� � SpreadMethod$ Repeat=�.���  � Color$ 	#FF2F3744��� $ 	#FF242A36�� � Offset$ 1Q�.��� .+��� $
��Left=�$��81��$��	22,47,0,0q�$	��Top=�$��75��$��../Images/database.png���� -   	 ��Name$	 	DefaultDB��
 � Cursor$

 Hand�����	#FF2D394E$	��3.5q� �� CornerRadius$ 10��$��
120,27,0,0q�$
��Left=�$	��110��$	��140��$	��Top=� �� Padding$ 0,4,0,0q����� $ 0.5,1&�$ 0.5,0&� �� Opacity$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��4,0,0,0q�.+�� $
��auto�� � RowDefinitions �� $��70 ��� $��38 �.+��� $��0��$ ��../Images/data-network.png��$��65��$��65���� $��1��$��Use MV Pre
 Build Data��$��Center=�
�������$��38��$
��10.5(��� -   $	 NewDB��$

 Hand�����	#FF2D394E$	��3.5q�$ 10��$��
250,27,0,0q�$
��Left=�$	��110��$	��140��$	��Top=�$ 0,4,0,0q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��4,0,0,0q�$

 Hand��.+�� $
��auto�� �� $��70 ��� $��38 �.+��� $��0��$��../Images/folder.png��$��65��$��65���� $��1��$��Start Fresh
Data Build��$��Center=�
�������$��38��$
��10.5(��� -   $	 	NExportDB��$

 Hand�����	#FF2D394E$��3q�$ 9��$��
370,45,0,0q�$
��Left=�$	��160��$��40��$	��Top=����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $

 Hand��.+�� $
��auto�� � ColumnDefinitions �� $��40 ��� $	��120 �.+��� $��0��$��../Images/Export.png��$��25��$��25��$
��Left=�$��8,-5,0,0q��� $��1��$��Export Current Data��$
��Left=�
�������$��38��$
��10.5(�$��0,10,0,0q��� -   $	 ImportDB��$

 Hand�����	#FF2D394E$��3q�$ 9��$��
370,90,0,0q�$
��Left=�$	��160��$��40��$	��Top=����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $

 Hand��.+�� $
��auto�� �� $��40 ��� $	��120 �.+��� $��0��$��../Images/import.png��$��25��$��25��$
��Left=�$��8,-5,0,0q��� $��1��$��Import Data��$
��Left=�
�������$��38��$
��10.5(�$��0,10,0,0q��� -    ��Name$ HeaderLabel��$��Select Data Type��$
��Left=�$��27��$	��Top=�$	��505��
�������$��DemiBold"�$��13(�$��5,0,0,0q�$��0,5,0,0q��� -   $	 
ProceedBTN��$��0�����	#FF2D394E$��	2.5,2,0,0q�$ 	10,0,0,10��$��Right=�$	��145��$��35��$��Bottom=�$

 Hand��$��375,175,0,0q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��4,0,0,0q�.+�� $
��auto�� �� $��35 ��� $
��auto ��� $��8* ��� $	��23* �.+��� $��0��$��../Images/choose.png��$��25��$��25��$	��Top=�$��5,0,5,0q��� $��1��$��Proceed��$��Center=�
�������$��14(�$��Center=��� -   $	 ExitdBTN��$��0�����	#FF2D394E$��2,0,0,2q�$ 0,0,0,10��$��Right=�$��39��$��35��$	��Top=�$

 Hand��$��	481,0,0,0q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
 0.25Q�� $ 	#FF1E2738��$ 1Q�._��� $��/Images/close-button.png��$��28��$��28��$��Center=�$��Center=�