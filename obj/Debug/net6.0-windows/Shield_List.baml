   M S B A M L   `   `   `  ����C  ?mShield2, Version=1.0.1.5, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2  5   	       mShield2.Shield_List   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:mShield2     5   	   -   5          � Title$  Process List��5   	   $	��700��6   $	��680��6+    � Icon$ Images/shield.png��68   $��Disabled=�6Q    � WindowStartupLocation$ CenterOwner=�6�   $	��920��6�   ��5
      �� 5   
    �� EndPoint$ 0.8,1&�6    �� 
StartPoint$ 0.8,0&�6/    � SpreadMethod$ Repeat=�6B   .��5      �  � Color$ 	#FF2F3744��6   � 5      $ 	#FF242A36��6    � Offset$ 1Q�6-   5      .��5      � .+�5   
   �� ���	#FF566679$��0,0,4,0q�6)   $
��Left=�6C   $
��auto��6^   $	��350��6l   $��Visible=�6x   $��0,30,0,0q�6�   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5      � $ 	#FF0B476D��6#   � 5      $ 	#FF03263C��6#   $ 1Q�65   5      ._�5      �� $��Visible=�6   $��Disabled=�6A   .��5      � -   5         �Name$ 	ItemsGrid��5      $��Center=�6*   $	��334��6G   $��	0,10,0,10q�6S   $
��auto��6f   $��Visible=�6t   5      5      �� 5   
   -   5        	 ��Name$	 	TotalProc��5      $��Label��6#   $
��Left=�63   $��20��6N   $��
353,27,0,0q�6Z   $	��Top=�6n   $	��181��6�   
�������$��0,0,0,0q�6�   �� 5   
   ���	#FF566679$��0,0,4,0q�6)   $
��Left=�6C   $��30��6^   $	��Top=�6j   $	��350��6�   ���	#FF385D7F._�5      � .+�5       �� -   5        $��Images/setting(1).png��5       $
��Left=�67   $��23��6R   $��23��6]   $��3,0,0,0q�6i   
 � Cursor$

 Hand��6�    � ContextMenu 5!      �� 5"      .@�5#      m� -   5         m�Name$ SavedAppsCheck��5#   '   $!��Saved/Approved Applications��6?    m� IsCheckable$
 True��6d   6w   m� 5$      -   5        $ AllRunningChecker��5$   '   $��All Running Processes��6B   $
 True��6a   6t   m� 5%      -   5        $ OnlineDBCheck��5%   '   $"��ExDevelopers Online Database��6>   $
 True��6d   6w   �� 5&      m� 5'      $��Quick Data Sync��6'    m� 	IsChecked$
 True��6@   5(      5*      �� 5+      -   5         ��Name$ LookUpTextBox��5+      $	��260��61   $
��Left=�6=   ���	#FF2A385A���	#FF4B5573 �� SelectionBrush �	#FFD8A459$��00��6�   
������� �� IsUndoEnabled$ False��6�    �� MaxLines$ 1��6�    �� 	UndoLimit$ 0��6�    J� 	AllowDrop$ False��6�   $��15(�6   �� 	MaxLength$	 100��6   �� 
IsReadOnly$
 True��6   $��Center=�62  $��30,0,0,0q�6M  $��25��6_  �� 5,      -	   5         ��Name$ SubmitButton��5,      $��Right=�6/   $��58��6K   $

 Hand��6W   $��Search��6e   ���	#FF3A73A0���	#FFEDEDED$��DemiBold"�6�   $��14(�6�   $��Center=�6�   $��25��6�   ���	#FF4B5573$��0,1,1,1q�6  6!  5/      50      � 51   
   -
   5         �Name$ ProgressBar��51      $��10��6+   $��473,15,17,0q�67   $	��Top=�6L   ���	#FFD3E6FF���	#FF345F80$
��Auto��6�   ��52      �� 53      $	 1,1&�6&   $	 0,0&�65   .��54      � $ 	#FF15DA7B��6#   $ 1Q�65   � 55      $ 	#FF196942��6#   $ 0Q�65   56      58      �� 59   
   -   5        $	 TotalProc_Copy��59      $��Process Info��6(   $
��Left=�6?   $��32��6Z   $��	355,0,0,0q�6f   $	��Top=�6y   $	��116��6�   
�������$
��Bold"�6�   $��18(�6�   �� 5<   
   ���	#FF566679$��1,1,0,1q�6)   $	��164��6C   $��
396,71,0,0q�6P   $	��Top=�6d    �� CornerRadius$ 5,0,0,5��6|   ��5=      �� 5>      $ 1,0.8&�6&   $	 0,0&�67    �� Opacity$	 0.7Q�6H   .��5?      � $ 	#FF171717��6#   � 5@      $ 	#FF14213C��6#   $ 0.849Q�65   5A      ._�5C      �  � RowDefinitions 5D      �� 5E      $��30 �6$   �� 5F      $��30 �6$   �� 5G      $��30 �6$   �� 5H      $��5 �6$   �� 5I      $��40 �6$   .+�5K      �� -   5        $	 ProcNameLabel��5K      $��0��6/   
�������$
��Left=�6O   $��Center=�6j   $��15(�6�   $��DemiBold"�6�   $��Name: ��6�   �� 5L      -   5        $	 ProcAllowedLabel��5L      $��1��62   
�������$
��Left=�6R   $��Center=�6m   $��15(�6�   $��DemiBold"�6�   $��	Allowed: ��6�   �� 5M      -   5        $	 ProcRespondingLabel��5M      $��2��65   
�������$
��Left=�6U   $��Center=�6p   $��15(�6�   $��DemiBold"�6�   $��Responding: ��6�   �� 5N      $��3��6   $��Stretch=�6*   $��Stretch=�6H   ��5O      �� 5P      $ 0.5,1&�6.   $ 0.5,0&�6?   .��5Q      � $ 	#FF30353A��6+   � 5R      $ 	#FF3D444A��6+   $ 1Q�6=   5S      5U      �� 5V      -   5        $	 ProcDescLabel��5V      $��4��6/   
�������$
��Left=�6O   $��Center=�6j   $��15(�6�   $��DemiBold"�6�   $��Description: ��6�   5W      5X      �� 5Y   
   -   5         ��Name$ TraceProcBoarder��5Y      ���	#FF566679$��1,1,0,1q�6C   $	��190��6]   $��396,281,0,0q�6j   $	��Top=�6   $ 5,0,0,5��6�   ��5Z      �� 5[      $ 1,0.8&�6&   $	 0,0&�67   $	 0.7Q�6H   .��5\      � $ 	#FF171717��6#   � 5]      $ 	#FF14213C��6#   $ 0.849Q�65   5^      ._�5`      �  5a      �� 5b      $��27 �6$   �� 5c      $��25 �6$   �� 5d      $��5 �6$   �� 5e      $��30 �6$   �� 5f      $��25 �6$   �� 5g      $��5 �6$   �� 5h      $��27 �6$   �� 5i      $��25 �6$   �� 5j      $��5 �6$   .+�5l      �� $��0��6   
�������$
��Left=�69   $��Center=�6T   $��15(�6o   $��DemiBold"�6}   $��Start Path:��6�   �� 5m      -   5        $ StartPathTextBox��5m      $��1��64   $��Stretch=�6A   ���	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��6�   
�������$ False��6�   $ 1��6�   $ 0��6�   $ False��6�   $��15(�6	  $	 500��6  $
 True��6'  $��Center=�69  $��25��6T  �� 5n      $��2��6   $��Stretch=�6*   $��Stretch=�6H   ��5o      �� 5p      $ 0.5,1&�6.   $ 0.5,0&�6?   .��5q      � $ 	#FF30353A��6+   � 5r      $ 	#FF3D444A��6+   $ 1Q�6=   5s      5u      �� 5v      $��3��6   
�������$
��Left=�69   $��Center=�6T   $��15(�6o   $��DemiBold"�6}   $��Original File Name:��6�   �� 5w      -   5        $ OGFileNameTextBox��5w      $��4��65   $��Stretch=�6B   ���	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��6�   
�������$ False��6�   $ 1��6�   $ 0��6�   $ False��6�   $��15(�6
  $	 500��6  $
 True��6(  $��Center=�6:  $��25��6U  �� 5y      $��5��6   $��Stretch=�6*   $��Stretch=�6H   ��5z      �� 5{      $ 0.5,1&�6.   $ 0.5,0&�6?   .��5|      � $ 	#FF30353A��6+   � 5}      $ 	#FF3D444A��6+   $ 1Q�6=   5~      5�      �� 5�      $��6��6   
�������$
��Left=�69   $��Center=�6T   $��15(�6o   $��DemiBold"�6}   $��Command Line: ��6�   �� 5�      -   5        $ ArgumentsTextBox��5�      $��7��64   $��Stretch=�6A   ���	#FF2A385A���	#FF4B5573 �	#FFD8A459$��//��6�   
�������$ False��6�   $ 1��6�   $ 0��6�   $ False��6�   $��15(�6	  $	 500��6  $
 True��6'  $��Center=�69  $��25��6T  5�      5�      �� 5�   
   -   5        $ ControlButtons��5�      $��30��6)   ���	#FF566679$��1,1,0,1q�6M   $��396,480,0,0q�6g   $	��Top=�6|   $ 5,0,0,5��6�   ._�5�      � .+�5�      �� -   5        $ 	AcceptBTN��5�      $
��Left=�6,   $	��140��6G   $��5,0,0,0q�6S   $��23��6d   ���	#FF020D1D$

 Hand��6�   ��5�      �� 5�      $ 0.5,1&�6.   $ 0.5,0&�6?   $	 Pad=�6R   $
 0.93Q�6e   .��5�      � $ 	#FF0A3B61��6+   $
 0.55Q�6=   � 5�      $ 	#FF1F4873��6+   $
 0.03Q�6=   5�      .��5�      �� 
�������$��Stretch=�6J   $��Stretch=�6h   $
��14.5(�6�   $
��Bold"�6�   $��Accept��6�   $��0,0,0,-2q�6�   ��6   Z� 6�   5�      �� 5�      -   5        $ 
DeclineBTN��5�      $��Right=�6-   $	��140��6I   $��5,0,0,0q�6U   $��23��6f   ���	#FF020D1D$

 Hand��6�   ��5�      �� 5�      $ 0.5,1&�6.   $ 0.5,0&�6?   $	 Pad=�6R   $
 0.93Q�6e   .��5�      � $ 	#FF0A3B61��6+   $
 0.55Q�6=   � 5�      $ 	#FF1F4873��6+   $
 0.03Q�6=   5�      .��5�      �� 
�������$��Stretch=�6J   $��Stretch=�6h   $
��14.5(�6�   $
��Bold"�6�   $��Decline��6�   $��0,0,0,-2q�6�   ��6   Z� 6�   5�      5�      5�      5�      5�      