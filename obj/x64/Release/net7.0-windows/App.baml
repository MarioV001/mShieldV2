   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.App   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     (localclr-namespace:mShield2       �� 	Resources     RepeatButtonTransparent �� 
TargetType �� Property �� Value �� 
TargetType ! SliderThumb.Static.Background �� Color  SliderThumb.Static.Border ! SliderThumb.Static.Foreground $  SliderThumb.MouseOver.Background   SliderThumb.MouseOver.Border " SliderThumb.Pressed.Background  SliderThumb.Pressed.Border # SliderThumb.Disabled.Background 	 SliderThumb.Disabled.Border  
 SliderThumb.Track.Background  SliderThumb.Track.Border   SliderThumbHorizontalDefault � UseLayoutRounding F�Name J� SnapsToDevicePixels	 �� Stretch
 �� Triggers P� Property P� Value �� 
TargetName  SliderThumbHorizontalTop  SliderThumbHorizontalBottom  SliderHorizontal ��Name � RowDefinitions m�Name m� Fill m� 	Placement ��Name ]�Name ]� DecreaseRepeatButton �� DecreaseLarge ]� IncreaseRepeatButton �� IncreaseLarge ]� Thumb n�Name � OverridesDefaultStyle  SliderThumbVerticalDefault  SliderThumbVerticalLeft  SliderThumbVerticalRight  SliderVertical � ColumnDefinitions  SliderStyleMV �� Triggers��%C  &	        &	 �     &	 �     &	 �     &	 �     &	     &	 &    &	 ;    &	 P    &		 e    &	
 z    &	 �    &	 �    7  7  7  7  7  7  7  7 	 &	 �    7  7  7  7  7  7  7  7 	 &	 �    7  7  7  7  7  7  7  7 	 &	     7 
 7  7   7   7  7  7  &	 �    7  7  7  7  7  7  7  7 	 &	 �    7  7  7  7  7  7  7  7 	 &	 �    7  7  7  7  7  7  7  7 	 &	 �    7 
 7  7   7   7  7  7  &	 �    7  7  7  �� " ��.���  �@�OverridesDefaultStyle$
 true����  � ��
 ���� ��  � |�$ false����  � ��$ false����  � �� �� " ��.R��� #��z��#��z��#��z���� $ 	#FF798BAD���� $ 	#FF3B4784���� $ 	#FFE5E5E5���� $ 	#FFDCECFC���� $ 	#FF7Eb4EA���� $ 	#FFDAECFC���� $ 	#FF569DE5���� $ 	#FFF0F0F0���� $ 	#FFD9D9D9���� $ 	#FF252B4E���� $ 	#FF3B4784���� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip��d����        �        �ا �ا ��ا     �ا ���ا ����ا �������    ��	8��  8�� $
 True��$
	 Fill=�$��1��$
 True��$��Center=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip�������    ��[ �    ��[ `�S `�S �`�S     �ا ��[ �ا ��[ ��ا ��[ �ا ���ا ����ا �������    ����[ ��[ 	8��  8�� $
 True��$
	 Fill=�$��1��$
 True��$��Center=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip�������     � �     � `�S ��`�S ���`�S ���ا  � �ا  � ��ا  � �ا �ا ��ا     �         �  � 	8��  8�� $
 True��$
	 Fill=�$��1��$
 True��$��Center=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " ��.R��� $ border��#��z��#��z��#��z��$
 True��._��  �� $
��Auto ��� $
��Auto �#��z���� $
��Auto �.+�m� $ TopTick��# z��$��8��$��0,0,0,2q�$	 Top=�$��0��$y�	Collapsed=�m� $ 
BottomTick��# z��$��8��$��0,2,0,0q�$ Bottom=�$��2��$y�	Collapsed=��� $ TrackBackground��8��  8�� $	��1.5q�#��z��$��0q�$��1��$��center=�._��� $��-6,-1q�.+��� $ PART_SelectionRange��#��� ��$	��5.0��$y�Hidden=�]� $ 
PART_Track��$��1�� �� #��Z 8��  �� #��Z 8��  n� $ Thumb��$|�False��#��z��$
 True��8�� $��Center=�$��20��
 P�  �@��TickPlacement$ TopLeft=�. ��� $ TopTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 5,2,5,0q�P�  �@��TickPlacement$ BottomRight=�. ��� $ 
BottomTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 5,0,5,2q�P�  �@��TickPlacement$
 Both=�. ��� $ TopTick�� � y�$ Visible=��� $ 
BottomTick�� � y�$ Visible=�P�  �@��IsSelectionRangeEnabled$
 true��. ��� $ PART_SelectionRange�� � y�$ Visible=�P�  �@J�IsKeyboardFocused$
 true��. ��� $ Thumb�� � ��
 ��  ��� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip��+���� �  � ѠI � ѠI�y� � � �y� 	8��  8�� $
	 Fill=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip���������[ �ا Ӏ�[ �ا `�S `�S �    `�S ��[ ��[ Ӏ�[     ����Ӏ�    ���ا ���ا Ӏ��ا ��[ �ا ��[ �ا 	8��  8�� $
	 Fill=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=�$
 True��$��Center=�.+�F� $
 grip������� � �ا � � �ا ��`�S ��`�S Ӏ�`�S  �  � � �     �        �ا �ا �    �ا  � �ا  � �ا 	8��  8�� $
	 Fill=�
 P�  �@J�IsMouseOver$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  �@n�
IsDragging$
 true��. ��� $
 grip��8   � ���� $
 grip��8   � ��P�  � {�$ false��. ��� $
 grip��8   � ���� $
 grip��8   � ���� " ��.R��� $ border��#��z��#��z��#��z��$
 True��._��  �� $
��Auto ��� #��z��$
��Auto ��� $
��Auto �.+�m� $ TopTick��$��0��# z��$��0,0,2,0q�$
 Left=�$y�	Collapsed=�$��4��m� $ 
BottomTick��$��2��# z��$��2,0,0,0q�$ Right=�$y�	Collapsed=�$��4���� $ TrackBackground��8��  8�� $��1q�$��1��$��center=�$	��0,5q�$	��4.0��._��� $��-1,-6q�.+��� $ PART_SelectionRange��#��� ��$y�Hidden=�$	��4.0��]� $ 
PART_Track��$��1�� �� #��Z 8��  �� #��Z 8��  n� $ Thumb��$|�False��$��11��$
 True��8�� $	��Top=�$��18��
 P�  �@��TickPlacement$ TopLeft=�. ��� $ TopTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 2,5,0,5q�P�  �@��TickPlacement$ BottomRight=�. ��� $ 
BottomTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 0,5,2,5q�P�  �@��TickPlacement$
 Both=�. ��� $ TopTick�� � y�$ Visible=��� $ 
BottomTick�� � y�$ Visible=�P�  �@��IsSelectionRangeEnabled$
 true��. ��� $ PART_SelectionRange�� � y�$ Visible=�P�  �@J�IsKeyboardFocused$
 true��. ��� $ Thumb�� � ��
 ��  ��� " ��.���  �@��IsPressAndHoldEnabled$ false����  � ��
 ���� ��  � ��
 ���� ��  � ��8   ��  � ��8   P�  �@��Orientation$ Vertical=�. ���  � ��8  