   M S B A M L   `   `   `  ����C  ?mShield2, Version=1.0.1.5, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2  5          mShield2.App   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      (localclr-namespace:mShield2     5        �� 	Resources  5         RepeatButtonTransparent �� 
TargetType �� Property �� Value �� 
TargetType ! SliderThumb.Static.Background �� Color  SliderThumb.Static.Border ! SliderThumb.Static.Foreground $  SliderThumb.MouseOver.Background   SliderThumb.MouseOver.Border " SliderThumb.Pressed.Background  SliderThumb.Pressed.Border # SliderThumb.Disabled.Background 	 SliderThumb.Disabled.Border  
 SliderThumb.Track.Background  SliderThumb.Track.Border   SliderThumbHorizontalDefault � UseLayoutRounding F�Name J� SnapsToDevicePixels	 �� Stretch
 �� Triggers P� Property P� Value �� 
TargetName  SliderThumbHorizontalTop  SliderThumbHorizontalBottom  SliderHorizontal ��Name � RowDefinitions m�Name m� Fill m� 	Placement ��Name ]�Name ]� DecreaseRepeatButton �� DecreaseLarge ]� IncreaseRepeatButton �� IncreaseLarge ]� Thumb n�Name � OverridesDefaultStyle  SliderThumbVerticalDefault  SliderThumbVerticalLeft  SliderThumbVerticalRight  SliderVertical � ColumnDefinitions  SliderStyleMV �� Triggers��%�(  &	        &	 V    &	 y    &	 �    &	 �    &	 �    &	     &	 (    &	 K    &		 n    &	
 �    &	 �    &	 �    7  7  7  7  7  7  7  7 	 &	      7  7  7  7  7  7  7  7 	 &	 O	    7  7  7  7  7  7  7  7 	 &	 �    7 
 7  7   7   7  7  7  &	 �    7  7  7  7  7  7  7  7 	 &	 C    7  7  7  7  7  7  7  7 	 &	 S    7  7  7  7  7  7  7  7 	 &	 [    7 
 7  7   7   7  7  7  &	 Y%    7  7  7  �� 5   
   " ��60   .�5	      ��  �@�OverridesDefaultStyle$
 true��66   �� 5
       � ��
 ���� 6+   �� 5       � |�$ false��6*   �� 5       � ��$ false��6*   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6$   #��z��6H   #��z��6j   5      5      5      �� 5   
   $ 	#FF798BAD��6@   �� 5   
   $ 	#FF3B4784��6<   �� 5   
   $ 	#FFE5E5E5��6@   �� 5   
   $ 	#FFDCECFC��6C   �� 5   
   $ 	#FF7Eb4EA��6?   �� 5   
   $ 	#FFDAECFC��6A   �� 5   
   $ 	#FF569DE5��6=   �� 5   
   $ 	#FFF0F0F0��6B   �� 5   
   $ 	#FFD9D9D9��6>   �� 5   
   $ 	#FF252B4E��6?   �� 5   
   $ 	#FF3B4784��6;   �� 5    
   " n�6?   .R�5!      � $��Center=�6   $
 True��60   $��Center=�6I   .+�5"      F� $
 grip��6   d����        �        �ا �ا ��ا     �ا ���ا ����ا �������    ��	8��  8�� $
 True��6�   $
	 Fill=�6�   $��1��6  $
 True��6  $��Center=�62  5#      
 5$      P� 5%       �@J�IsMouseOver$
 true��61   . �5&      �� $
 grip��6-   8   � ��6?   �� 5'      $
 grip��6/   8   � ��6A   5(      P� 5)       �@n�
IsDragging$
 true��60   . �5*      �� $
 grip��6-   8   � ��6?   �� 5+      $
 grip��6/   8   � ��6A   5,      P� 5-       � {�$ false��6/   . �5.      �� $
 grip��6-   8   � ��6?   �� 5/      $
 grip��6/   8   � ��6A   50      52      �� 53   
   " n�6;   .R�54      � $��Center=�6   $
 True��60   $��Center=�6I   .+�55      F� $
 grip��6   �����    ��[ �    ��[ `�S `�S �`�S     �ا ��[ �ا ��[ ��ا ��[ �ا ���ا ����ا �������    ����[ ��[ 	8��  8�� $
 True��6�   $
	 Fill=�6  $��1��6  $
 True��6+  $��Center=�6D  56      
 57      P� 58       �@J�IsMouseOver$
 true��61   . �59      �� $
 grip��6-   8   � ��6?   �� 5:      $
 grip��6/   8   � ��6A   5;      P� 5<       �@n�
IsDragging$
 true��60   . �5=      �� $
 grip��6-   8   � ��6?   �� 5>      $
 grip��6/   8   � ��6A   5?      P� 5@       � {�$ false��6/   . �5A      �� $
 grip��6-   8   � ��6?   �� 5B      $
 grip��6/   8   � ��6A   5C      5E      �� 5F   
   " n�6>   .R�5G      � $��Center=�6   $
 True��60   $��Center=�6I   .+�5H      F� $
 grip��6   �����     � �     � `�S ��`�S ���`�S ���ا  � �ا  � ��ا  � �ا �ا ��ا     �         �  � 	8��  8�� $
 True��6�   $
	 Fill=�6  $��1��6  $
 True��6/  $��Center=�6H  5I      
 5J      P� 5K       �@J�IsMouseOver$
 true��61   . �5L      �� $
 grip��6-   8   � ��6?   �� 5M      $
 grip��6/   8   � ��6A   5N      P� 5O       �@n�
IsDragging$
 true��60   . �5P      �� $
 grip��6-   8   � ��6?   �� 5Q      $
 grip��6/   8   � ��6A   5R      P� 5S       � {�$ false��6/   . �5T      �� $
 grip��6-   8   � ��6?   �� 5U      $
 grip��6/   8   � ��6A   5V      5X      �� 5Y   
   " ��63   .R�5Z      �� $ border��6   #��z��6%   #��z��6O   #��z��6{   $
 True��6�   ._�5[      �  5\      �� 5]      $
��Auto �6(   �� 5^      $
��Auto �6(   #��z��66   �� 5_      $
��Auto �6(   .+�5a      m� $ TopTick��6   # z��6/   $��8��6S   $��0,0,0,2q�6^   $	 Top=�6o   $��0��6   $y�	Collapsed=�6�   m� 5b      $ 
BottomTick��6   # z��62   $��8��6V   $��0,2,0,0q�6a   $ Bottom=�6r   $��2��6�   $y�	Collapsed=�6�   �� 5c      $ TrackBackground��6   8��  8�� $	��1.5q�6�   #��z��6�   $��0q�6�   $��1��6�   $��center=�6�   ._�5d      �� $��-6,-1q�6!   .+�5e      �� $ PART_SelectionRange��6(   #��� ��6E   $	��5.0��6�   $y�Hidden=�6�   5f      5g      ]� 5h      $ 
PART_Track��6   $��1��60    5i      �� 5j      #��Z 6+   8�� 6U    5l      �� 5m      #��Z 6+   8�� 6U    5o      n� 5p      $ Thumb��6$   $|�False��63   #��z��6E   $
 True��6g   8�� $��Center=�6�   $��20��6�   5r      5s      5t      
 5u      P� 5v       �@��TickPlacement$ TopLeft=�63   . �5w      �� $ TopTick��63    � y�$ Visible=�6H   �� 5x      $ Thumb��61   8   � ��6D   �� 5y      $ TrackBackground��6/    � ��$ 5,2,5,0q�6L   5z      P� 5{       �@��TickPlacement$ BottomRight=�63   . �5|      �� $ 
BottomTick��63    � y�$ Visible=�6K   �� 5}      $ Thumb��61   8   � ��6D   �� 5~      $ TrackBackground��6/    � ��$ 5,0,5,2q�6L   5      P� 5�       �@��TickPlacement$
 Both=�63   . �5�      �� $ TopTick��63    � y�$ Visible=�6H   �� 5�      $ 
BottomTick��63    � y�$ Visible=�6K   5�      P� 5�       �@��IsSelectionRangeEnabled$
 true��6=   . �5�      �� $ PART_SelectionRange��63    � y�$ Visible=�6T   5�      P� 5�       �@J�IsKeyboardFocused$
 true��67   . �5�      �� $ Thumb��63    � ��
 ��  �6F   5�      5�      �� 5�   
   " n�6=   .R�5�      � $��Center=�6   $
 True��60   $��Center=�6I   .+�5�      F� $
 grip��6   +���� �  � ѠI � ѠI�y� � � �y� 	8��  8�� $
	 Fill=�6�   5�      
 5�      P� 5�       �@J�IsMouseOver$
 true��61   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       �@n�
IsDragging$
 true��60   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       � {�$ false��6/   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      5�      �� 5�   
   " n�6:   .R�5�      � $��Center=�6   $
 True��60   $��Center=�6I   .+�5�      F� $
 grip��6   �������[ �ا Ӏ�[ �ا `�S `�S �    `�S ��[ ��[ Ӏ�[     ����Ӏ�    ���ا ���ا Ӏ��ا ��[ �ا ��[ �ا 	8��  8�� $
	 Fill=�6�   5�      
 5�      P� 5�       �@J�IsMouseOver$
 true��61   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       �@n�
IsDragging$
 true��60   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       � {�$ false��6/   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      5�      �� 5�   
   " n�6;   .R�5�      � $��Center=�6   $
 True��60   $��Center=�6I   .+�5�      F� $
 grip��6   ����� � �ا � � �ا ��`�S ��`�S Ӏ�`�S  �  � � �     �        �ا �ا �    �ا  � �ا  � �ا 	8��  8�� $
	 Fill=�6�   5�      
 5�      P� 5�       �@J�IsMouseOver$
 true��61   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       �@n�
IsDragging$
 true��60   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      P� 5�       � {�$ false��6/   . �5�      �� $
 grip��6-   8   � ��6?   �� 5�      $
 grip��6/   8   � ��6A   5�      5�      �� 5�   
   " ��61   .R�5�      �� $ border��6   #��z��6%   #��z��6O   #��z��6{   $
 True��6�   ._�5�      �  5�      �� 5�      $
��Auto �6+   �� 5�      #��z��6+   $
��Auto �6Q   �� 5�      $
��Auto �6+   .+�5�      m� $ TopTick��6   $��0��6/   # z��6?   $��0,0,2,0q�6c   $
 Left=�6t   $y�	Collapsed=�6�   $��4��6�   m� 5�      $ 
BottomTick��6   $��2��62   # z��6B   $��2,0,0,0q�6f   $ Right=�6w   $y�	Collapsed=�6�   $��4��6�   �� 5�      $ TrackBackground��6   8��  8�� $��1q�6�   $��1��6�   $��center=�6�   $	��0,5q�6�   $	��4.0��6�   ._�5�      �� $��-1,-6q�6!   .+�5�      �� $ PART_SelectionRange��6(   #��� ��6E   $y�Hidden=�6�   $	��4.0��6�   5�      5�      ]� 5�      $ 
PART_Track��6   $��1��60    5�      �� 5�      #��Z 6+   8�� 6U    5�      �� 5�      #��Z 6+   8�� 6U    5�      n� 5�      $ Thumb��6$   $|�False��63   $��11��6E   $
 True��6Q   8�� $	��Top=�6�   $��18��6�   5�      5�      5�      
 5�      P� 5�       �@��TickPlacement$ TopLeft=�63   . �5�      �� $ TopTick��63    � y�$ Visible=�6H   �� 5�      $ Thumb��61   8   � ��6D   �� 5�      $ TrackBackground��6/    � ��$ 2,5,0,5q�6L   5�      P� 5�       �@��TickPlacement$ BottomRight=�63   . �5�      �� $ 
BottomTick��63    � y�$ Visible=�6K   �� 5�      $ Thumb��61   8   � ��6D   �� 5�      $ TrackBackground��6/    � ��$ 0,5,2,5q�6L   5�      P� 5�       �@��TickPlacement$
 Both=�63   . �5�      �� $ TopTick��63    � y�$ Visible=�6H   �� 5�      $ 
BottomTick��63    � y�$ Visible=�6K   5�      P� 5�       �@��IsSelectionRangeEnabled$
 true��6=   . �5�      �� $ PART_SelectionRange��63    � y�$ Visible=�6T   5�      P� 5�       �@J�IsKeyboardFocused$
 true��67   . �5�      �� $ Thumb��63    � ��
 ��  �6F   5�      5�      �� 5�   
   " ��6&   .�5�      ��  �@��IsPressAndHoldEnabled$ false��6=   �� 5�       � ��
 ���� 6+   �� 5�       � ��
 ���� 6,   �� 5�       � ��8   6+   �� 5�       � ��8  6)    5�      P� 5�       �@��Orientation$ Vertical=�61   . �5      ��  � ��8  61   5     5     5     5     