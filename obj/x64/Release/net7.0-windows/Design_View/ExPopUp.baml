   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.ExPopUp   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     � Title$  ExPopUp��$	��190��$	��480��$��Disabled=� � AllowsTransparency$
 True�� � WindowStyle$
 None=� J� Opacity$	 0.8Q���Z� ��Z� .��� .+��� $	��1.5q�$��Center=�$	��161��$	��Top=�$	��470��$��Disabled=� �� CornerRadius$ 8,8,0,0�����	#FF2B0C0C����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF863535��� $ 	#FF5F0E0E�� � Offset$ 1Q�._�� 	 � ColumnDefinitions	 �� $
��1.4* ��� $��* �
 � RowDefinitions
 �� $��20 ��� $��6 ��� $��20 ��� $��35 ��� $��23 ��� $��25 ��� $��30 �.+��� $��0��$��0��$
��Left=�$	��Top=�$��mShield Interruption��
�������$��DemiBold"�$��20��$��0,0,0,0q�$��3,0,0,0q���Z� �� $��1��$��2��$��Stretch=�$��Stretch=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFA4A1A1��� $ 	#FF797979��$ 1Q��� $��2��$��0��$
��Left=�$	��Top=�$��Process Name��
�������$��DemiBold"�$��20��$��0,0,0,0q�$��13(�$��2,0,0,0q���Z� �� $��3��$��0��$��2,2,10,2q����	#FF333333$ 0,6,6,0������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFD6D5D5��$ 1Q�� $ 	#FFF3F3F3��$ 0Q�._�� .+��� -    ��Name$ ProcNameLabel��$
��Left=�$��Center=�$��Process Name��
���   �$
��Bold"�$��20��$��0,0,0,0q�$��13(�$��10,0,0,0q���Z� �� -   $ ProcIDLabel��$��Right=�$	��Top=�$��(212)��
���   �$��Normal"�$��12��$��0,0,0,0q�$��8(�$��0,-1,1,0q���Z� �� $��4��$��0��$
��Left=�$	��Top=�$��Description��
�������$��DemiBold"�$��20��$��0,0,0,0q�$��13(�$��2,5,0,0q���Z� �� -   $ DescriptionLabel��$��5��$��2��$
��Left=�$	��Top=�$��Description��
�������$��20��$��0,0,0,0q�$��6,0,0,0q���Z� �� $��2��$��2��$��2��$ 0,0,0,6������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFD6D5D5��$ 1Q�� $ 	#FFF3F3F3��$ 0Q��� -   $ StartTimeLabel��$��2��$��1��$
��Left=�$	��Top=�$��Catch Time: ��
���   �$��20��$��0,0,0,0q�$��5,2,0,0q�$��DemiBold"���Z� �� -   $ RespondingLabel��$��3��$��1��$
��Left=�$	��Top=�$��Responding: ��
���   �$��20��$��0,0,0,0q�$��5,6,0,0q�$��DemiBold"���Z� �� -   $ AutoActionLabel��$��4��$��1��$
��Left=�$	��Top=�$(��"Automatically taking action in: 10��
�������$��20��$��0,0,0,0q�$��5,6,0,0q�$��Normal"���Z� �� -    ��Name$ TraceInfoBTN��$��6��$��0��$
��Left=�$��Center=� � Cursor$
 Hand��$��5,0,0,0q�$	 0.9Q�._�� .+��� $��22��$��80��$ 6,6,6,6�����	#FF2EB5E8$	��0.9q�$��	3.5,0,0,0q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF102231��$ 1Q�� $ 	#FF26385D��$ 0Q�._��� ���	#FFE6EBED$��
Trace Info��$��22,0,0,0q�$��0,0,0,0q�$��11(��� $��/search-engine.png��$
��Left=�$��25��$��30���� $	��Top=�$��30��$	��470��$��	5,160,5,0q�$��1.5,0,1.5,0q����	#FF2B0C0C���� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFEAEAEA��� $ 	#FFC3C2C2��$ 1Q�._�� .+��� -	    ��Name$ 	AcceptBTN��$
��Left=�$	��140��$��5,0,0,0q�$��23�����	#FF020D1D$
 Hand������ $ 0.5,1&�$ 0.5,0&� � SpreadMethod$	 Pad=� �� Opacity$
 0.93Q�.��� $ 	#FF111A3C��$
 0.55Q�� $ 	#FF32475D��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Accept��$��0,0,0,-2q���Z� �� -
   $ 
DeclineBTN��$��Right=�$	��140��$��23�����	#FF020D1D$��0,0,5,0q�$
 Hand������ $ 0.5,1&�$ 0.5,0&�$	 Pad=�$
 0.93Q�.��� $ 	#FF111A3C��$
 0.55Q�� $ 	#FF32475D��$
 0.03Q�.���� 
�������$��Stretch=�$��Stretch=�$
��14.5(�$
��Bold"�$��Decline��$��0,0,0,-2q���Z� 