   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null-clr-namespace:mShield2.ViewmShield2.View      mShield2.View.TCPTrace   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:mShield2.View       � Title$  TCPTrace��$	��450��$	��920������  �� EndPoint$ 0.8,1&� �� 
StartPoint$ 0.8,0&� � SpreadMethod$ Repeat=�.���  � Color$ 	#FF2F3744��� $ 	#FF242A36�� � Offset$ 1Q� � 	Resources    MV_GridViewHeaderStyle �� 
TargetType �� Property	 �� Value��%J   &	        �� " ��.���  � ��$
	 Left=���  � ��$	 8,2,0,2q�.��� .+��� -   
 ��Name$
 ControlButtons��$��30�����	#FF566679$��1,1,0,1q�$��Bottom=� �� CornerRadius$ 5,0,0,5��._�� -    �Name$ GridID��.+��� -    ��Name$ 	AcceptBTN��$
��Left=�$	��138��$��5,0,0,0q�$��23�����	#FF020D1D � Cursor$
 Hand������ $ 0.5,1&�$ 0.5,0&�$	 Pad=� �� Opacity$
 0.93Q�.��� $ 	#FF0A3B61��$
 0.55Q�� $ 	#FF1F4873��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Refresh��$��0,0,0,-2q���Z� �� -   $ 
DeclineBTN��$��Right=�$	��138��$��5,0,0,0q�$��23�����	#FF020D1D$
 Hand������ $ 0.5,1&�$ 0.5,0&�$	 Pad=�$
 0.93Q�.��� $ 	#FF0A3B61��$
 0.55Q�� $ 	#FF1F4873��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Decline��$��0,0,0,-2q���Z� �� -    ��Name$ TcpConnectionListBox�����	#FF2D3E4E
����������	#FF334465$��0,0,0,73q����� *	ConList+ � ContextMenu �� .@�m� $��Trace Entry���� m� -    m�Name$ 	BtnCopyIP��$��Copy Remote IP��m� $��Copy Remote Port��m� $��Copy Remote IP + Port�� �� View �� .P��� $��Proc ID�� �� Width$ 60�� �� HeaderContainerStyle# [   �� DisplayMemberBinding �� *	ProcessId+�� $��Proces Name��$ 80��# [   �� *ProcessName+�� $��Description��$	 270��# [   �� *ProcessDesc+�� $��Local Adress��$	 150��# [   �� *LocalAddress+�� $��Remote Adress��$	 150��# [   �� *RemoteAddress+�� $��Remote Port��$ 80��# [   �� *
RemotePort+�� $�� ��$	 120�� �� CellTemplate �� .R��� $ TraceBTN��-   $��Trace��$��80��