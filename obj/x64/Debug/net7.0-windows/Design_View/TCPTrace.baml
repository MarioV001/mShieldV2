   M S B A M L   `   `   `  ����C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null-clr-namespace:mShield2.ViewmShield2.View  5   	       mShield2.View.TCPTrace   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:mShield2.View     5   	     � Title$  TCPTrace��5   	   $	��450��6   $	��920��6'   ��5	      �� 5
   
    �� EndPoint$ 0.8,1&�6    �� 
StartPoint$ 0.8,0&�6/    � SpreadMethod$ Repeat=�6B   .��5      �  � Color$ 	#FF2F3744��6   � 5      $ 	#FF242A36��6    � Offset$ 1Q�6-   5       � 	Resources 5         MV_GridViewHeaderStyle �� 
TargetType �� Property	 �� Value��%}   &	        �� 5   
   " ��6/   .�5      ��  � ��$
	 Left=�6;   �� 5       � ��$	 8,2,0,2q�6(   5      5      .��5      � .+�5   
   �� -   5        
 ��Name$
 ControlButtons��5      $��30��6)   ���	#FF566679$��1,1,0,1q�6M   $��Bottom=�6g    �� CornerRadius$ 5,0,0,5��6�   ._�5      � -   5         �Name$ GridID��5      .+�5      �� -   5         ��Name$ 	AcceptBTN��5      $
��Left=�6,   $	��138��6G   $��5,0,0,0q�6S   $��23��6d   ���	#FF020D1D � Cursor$
 Hand��6�   ��5      �� 5      $ 0.5,1&�6.   $ 0.5,0&�6?   $	 Pad=�6R    �� Opacity$
 0.93Q�6e   .��5      � $ 	#FF0A3B61��6+   $
 0.55Q�6=   � 5       $ 	#FF1F4873��6+   $
 0.03Q�6=   5!      .��5#      �� 
�������$��Stretch=�6J   $��Stretch=�6h   $
��14.5(�6�   $
��Bold"�6�   $��Refresh��6�   $��0,0,0,-2q�6�   ��6   Z� 6�   5$      �� 5%      -   5        $ 
DeclineBTN��5%      $��Right=�6-   $	��138��6I   $��5,0,0,0q�6U   $��23��6f   ���	#FF020D1D$
 Hand��6�   ��5&      �� 5'      $ 0.5,1&�6.   $ 0.5,0&�6?   $	 Pad=�6R   $
 0.93Q�6e   .��5(      � $ 	#FF0A3B61��6+   $
 0.55Q�6=   � 5)      $ 	#FF1F4873��6+   $
 0.03Q�6=   5*      .��5,      �� 
�������$��Stretch=�6J   $��Stretch=�6h   $
��14.5(�6�   $
��Bold"�6�   $��Decline��6�   $��0,0,0,-2q�6�   ��6   Z� 6�   5-      5.      5/      �� 50   
   -   5         ��Name$ TcpConnectionListBox��50      ���	#FF2D3E4E
����������	#FF334465$��0,0,0,73q�6�   ��61   �� *	ConList+ � ContextMenu 51      �� 52      .@�53      m� $��Trace Entry��6   �� 54      m� 55      -   5         m�Name$ 	BtnCopyIP��55      $��Copy Remote IP��62   6J   m� 56      $��Copy Remote Port��6   m� 57      $��Copy Remote IP + Port��6   58       �� View 5:      �� 5;      .P�5<      �� $��Proc ID��6%    �� Width$ 60��67    �� HeaderContainerStyle# [  6m    �� DisplayMemberBinding 6B   �� *	ProcessId+6m   �� 5=      $��Proces Name��6%   $ 80��6:   # [  6r    6E   �� *ProcessName+6r   �� 5>      $��Description��6%   $	 270��6:   # [  6s    6F   �� *ProcessDesc+6s   �� 5?      $��Local Adress��6%   $	 150��6;   # [  6u    6G   �� *LocalAddress+6u   �� 5@      $��Remote Adress��6%   $	 150��6<   # [  6w    6H   �� *RemoteAddress+6w   �� 5A      $��Remote Port��6%   $ 80��6:   # [  6q    6E   �� *
RemotePort+6q   �� 5B      $�� ��6%   $	 120��6/    �� CellTemplate 5C      �� 5D      .R�5E   "   �� $ TraceBTN��6)   -   5        $��Trace��5E   ;   $��80��6b   6o   5F      5H      5I      5K      5N      5O      