   M S B A M L   `   `   `  ���� C  ?mShield2, Version=1.0.1.6, Culture=neutral, PublicKeyToken=null#clr-namespace:mShield2mShield2      mShield2.Login_Screen   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:mShield2     -     �Name$  LoginScreen�� � Title$ Login_Screen��$	��520��$	��500��$��Disabled=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=�����  �� EndPoint$ 0.8,1&� �� 
StartPoint$ 0.8,0&� � SpreadMethod$ Repeat=�.���  � Color$ 	#FF2F3744��� $ 	#FF242A36��	 � Offset$	 1Q�.��� .+��� -   
 ��Name$
 mLockButton�����	#FF2D394E$	��3.5q� �� CornerRadius$ 10��$��
0,225,10,0q�$��Right=�$	��110��$	��130��$	��Top=� �� Padding$ 0,4,0,0q� � Cursor$
 Hand��${�False������ $ 0.5,1&�$ 0.5,0&� �� Opacity$	 0.5Q�.��� $ 	#FF20242F��$
	 0.25Q�� $ 	#FF1E2738��$	 1Q�._��� $��4,0,0,0q�.+�� $
��auto�� � RowDefinitions �� $��70 ��� $��28 �.+��� $��0��$��../Images/lock.png��$��65��$��65���� $��1��$��mLock��$��Center=�
�������$��14(��� -   $
 mEncoderButton�����	#FF2D394E$	��3.5q�$ 10��$��
10,225,0,0q�$
��Left=�$	��110��$	��130��$	��Top=�$ 0,4,0,0q�${�False������ $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
	 0.25Q�� $ 	#FF1E2738��$	 1Q�._��� $��4,0,0,0q�$
 Hand��.+�� $
��auto�� �� $��70 ��� $��28 �.+��� $��0��$��../Images/encrypted.png��$��65��$��65���� $��1��$��mEncoder��$��Center=�
�������$��14(��� -   $
 OpenMShieldButton�����	#FF2D394E$	��3.5q�$��Center=�$	��538��$��55��$	��Top=�$ 0,4,0,0q� J� Opacity$	 0.8Q�$��	0,418,0,0q�$
 Hand��${�False������ $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
	 0.25Q�� $ 	#FF1E2738��$	 1Q�._��� $��4,0,0,0q�.+�� $
��auto��$��Center=� � ColumnDefinitions �� $��50 ��� $
��auto �.+��� $��0��$��../Images/shield(1).png��$��42��$��42���� $��1��$��Initialise mShield��$��Center=�
�������$��15(�$��Center=�$
��Bold"��� $��
Safe Start��$��125,238,210,248q�
����������	#FF254477���	#FF254065$��14(�$
��Left=�$	��Top=��� -    ��Name$ 
WiredLabel��$��mShield Not Wired!��$
��Left=�$��23��$��145,261,0,0q�$	��Top=�$	��133��
�������$��10(��� -   $
 LoginBorder�����	#FF2D324E$��0,3,0,3q�$��Center=�$	��500��$	��Top=�$��0,10,0,0q�$ 0,4,0,0q����� $ 0.5,1&�$ 0.5,0&�$	 0.5Q�.��� $ 	#FF20242F��$
	 0.25Q�� $ 	#FF1E2738��$	 1Q�._��� .+�� $
��auto��$��8,0,0,0q� �� $��35 ��� $��35 ��� $��50 �.+��� $��0��$
��ID: ��
�������$
��Left=�$��14(��� -    ��Name$ UsernIDTextBox��$��0��$	��430��$��28��$
��Left=�$��50,0,0,0q����	#FF2A385A���	#FF4B5573 �� SelectionBrush �	#FFD8A459$��1,1,1,1q�
�������$��15(� �� MaxLines$ 1�� �� 	MaxLength$	 100���� $��1��$��PASS: ��
�������$
��Left=�$��14(��� -   $ PassTextBox��$��1��$	��430��$��28��$
��Left=�$��50,0,0,0q����	#FF2A385A���	#FF4B5573 �	#FFD8A459$��00��
������� �� IsUndoEnabled$ False��$ 1�� �� 	UndoLimit$ 0�� J� 	AllowDrop$ False��$��15(�$	 100�� �� 
IsReadOnly$
 True���� -	   $��2��$
��Left=�$��30��$	��110��$��10,0,0,0q�$
 Hand��$
��EXIT�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(��� -
   $
 ErrorBox��$��2��$ 10�����	#FF542121$��1q�$��Center=�$	��210��$	��Top=�$��0,15,0,0q�$��20��$��Disabled=�$y�Hidden=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB94444��� $ 	#FF842929��$	 1Q�._��� -   $ InvalidLogintext��$��Center=�$��Center=�$��Invalid Login Info!��
�������$��DemiBold"�$��25��$��11(��� -    ��Name$ SubmitButton��$��2��$��Right=�$��30��$	��110��$��0,0,13,0q�$
 Hand��$��SUBMIT�����	#FF7A8FA9���	#FF3A537D���	#FFEDEDED$��DemiBold"�$��14(��� -    ��Name$ 	SaveLogin��$��Save & Auto Login��$��125,297,0,0q�
����������	#FF254477���	#FF254065$��14(�$
��Left=�$	��Top=��� -   $ AutoStartMShield��$��Auto Start With Windows��$��125,323,0,0q�
����������	#FF254477���	#FF254065$��14(�$
��Left=�$	��Top=�