   M S B A M L   `   `   `  ����  WaterMillProject)    #WaterMillProject.MainResourceWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Icon$ ImageSources/Logo.ico��5   	    � Title$ Water Mill Stock Ordering��5   	   $	��600��6+   $	��800��68    � AllowsTransparency . ��6^   Z�  � 	Resources 5
         sb_ShowMenu �� TargetProperty t� From		 t� To
 g� DecelerationRatio g� Duration  sb_HideMenu g� AccelerationRatio  CustomButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� Padding J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat �� Triggers P� Property P� Value �� 
TargetName  txt_Username �� CornerRadius ��Name��%6  &	        &	 �     &	     &	     �� 5   
   .��5      t� $ Margin�6!   $ 
0,-592,0,0X�6D   $	 0,0,0,0X�6V   $
 .9Q�6c   $ 0:0:1D�6z   5      �� 5   
   .��5      t� $ Margin�6!   $ 0,0,0,0X�6D   $	 
0,-592,0,0X�6S   $ .9Q�6c   $ 0:0:1D�6z   5      �� 5   
   " ��6*   .�5      ��  � ��# � ��6+   �� 5       � ��$ 2q�6(   �� 5       � ��$ 1q�60   �� 5       � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � �� 5      �� 5      " ��6&   .R�5       �� $ Bd��6!   #��z��6-   #��z��6Y   #��z��6�   # z��6�    . ._�5!      �� #��z��6/   #��z��6c   # z 6�   #��z��6�   # z 6  #��z��6B  5"       5#      P� 5$       �@J�IsMouseOver . . �5%   "   �� $ Bd��6@    � ��
 ���� 6P   �� 5&   "   $ Bd��6?    � ��
 ���� 6O   �� 5'   "    �@�Cursor$
 Hand��6;   �� 5(   "    �@J�Opacity$	 0.7Q�6<   5)      P� 5*       �@J�IsKeyboardFocused . . �5+   "   �� $ Bd��6@    � ��
 ���� 6P   �� 5,   "   $ Bd��6?    � ��
 ���� 6O   5-      P� 5.       � �� . . �5/   "   �� $ Bd��6@    � ��
 ���� 6P   �� 50   "   $ Bd��6?    � ��
 ���� 6O   51      P� 52       � {� .  . �53   "   �� # � ��6?    � ��54      56      58      59      �� 5;   
   " ��6%   .�5<      ��  �@J�SnapsToDevicePixels . 64   �� 5=       �@�OverridesDefaultStyle . 66   �� 5>       �@�FocusVisualStyle 61   Z� �� 5?       �@J�	AllowDrop .  6*   �� 5@       � �� . 6*   �� 5A       � �� 5B      �� 5C      " ��6&   .R�5D      �� $��Border��6!   $ 2��6/   $ 2q�6@   
������ 
������ $��1q�6   ._�5E      �� $ PART_ContentHost��66   $��0q�6+   66   5F      5G      5I      5J      5L      .��5N      � -   5         �Name$ bg��5N      ���#FFFFFF$��	0,0,10,10q�6,    J� Effect 5P   
   3  -System.Windows.Media.Effects.DropShadowEffect  5Q         
BlurRadius$ 10Q�6      	Direction$	 -90Q�6/       RenderingBias$  Quality=�6?   !   ShadowDepth$! 2Q�6W   .+�5T   
   �� $��ImageSources\Logo.png��6   $��10,10,644,481q�6/   �� 5V   
   $��Welcome back��6   $
��Left=�6'   $	��Top=�6B   $��	67,48,0,0q�6Z   $	��101��6m   $��
Myriad Pro)�6y   $��14(�6�   �� 5W   
   -   5        $��txt_userName��5W      $��24��6&   $	��Top=�62   $	��120��6J   $��69,70,601,0q�6V   #���  6k   |�.  " J� IsHitTestVisible" .  ��.  {�.  $��
Myriad Pro)�6�   $��14(�6�   �� 5Y   
   -   5        # ��Name$# btn_MenuHide��5Y      $��40��6'   $��49��62   $y�Hidden=�6Y   |�.  ��.  $��662,10,98,541q�6�   $��0q�6�   #���  6�   
������ $ K� ZIndex$$ 4��6  $��Disabled=�6  $��0q�6F  .��5Z      �� .+�5[      �� $$��ImageSources\HamburgerMenu.png��6   $
��Fill=�6@   5\      5]      �� 5_   
   -   5        $# btn_MenuShow��5_      $��40��6'   $��49��62   |�.  ��.  $��662,10,98,541q�6}   $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6�   $��0q�62  .��5`      �� .+�5a      �� $$��ImageSources\HamburgerMenu.png��6   $
��Fill=�6@   $��44��6O   $��39��6[   5b      5c      �� 5e   
   -   5        $# btn_Minimize��5e      $��40��6'   $��49��62   |�.  ��.  $��707,10,53,541q�6}   $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6�   $��0q�62  .��5f      �� .+�5g      �� $#��ImageSources\MinimizeIcon.png��6   $
��Fill=�6?   5h      5i      �� 5k   
   -   5        $# 	btn_Close��5k      $��40��6$   $��49��6/   |�.  ��.  $��752,10,8,541q�6w   $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6�   $��0q�6+  .��5l      �� .+�5m      �� $ ��ImageSources\CloseIcon.png��6   $
��Fill=�6<   5n      5o      �� 5q   
   -   5        $��pnl_Menu��5q   &   $$ 3��6   % �� Orientation$% Vertical=�66   $	��150��6M   $��Right=�6Y   $	��Top=�6u   $��637,-592,0,0q�6�   .+�5r      �� $��0q�6   $	��592��6)   ���	#4C808080._�5s      �� .+�5t      �� -   5        $# btn_Home��5t      $	��100��6/   $��30��6;   |�.  $��0,60,0.333,551q�6p   ��.  $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6  $��0q�68  .��5u      �� .+�5v      �� $!��ImageSources\HomeButton.png��6$   $��Uniform=�6I   $	��100��6[   5w      5x      �� 5z      -	   5        $# 
btn_Orders��5z      $	��100��61   $��30��6=   |�.  $��0,-540,0.333,551q�6t   ��.  $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6
  $��0q�6>  .��5{      �� .+�5|      �� $#��ImageSources\OrdersButton.png��6$   $��Uniform=�6K   $	��100��6]   5}      5~      �� 5�      -
   5        $# btn_ItemSearch��5�      $	��100��65   $��30��6A   |�.  $��0,-540,0.333,551q�6|   ��.  $��0q�6�   #���  6�   
������ $$ 4��6  $��Disabled=�6  $��0q�6F  .��5�      �� .+�5�      �� $'��!ImageSources\ItemSearchButton.png��6$   $��Uniform=�6O   $	��100��6a   5�      5�      �� 5�      -   5        $# btn_UserSearch��5�      $	��100��65   $��30��6A   |�.  $��0,-540,0.333,551q�6|   ��.  $��0q�6�   #���  6�   
������ $$ 4��6  $��Disabled=�6  $��0q�6F  .��5�      �� .+�5�      �� $'��!ImageSources\UserSearchButton.png��6$   $��Uniform=�6O   $	��100��6a   5�      5�      �� 5�      -   5        $# btn_NewItem��5�      $	��100��62   $��30��6>   |�.  $��0,-540,0.333,551q�6v   ��.  $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6  $��0q�6@  .��5�      �� .+�5�      �� $$��ImageSources\NewItemButton.png��6$   $��Uniform=�6L   $	��100��6^   5�      5�      �� 5�      -   5        $# btn_NewSupplier��5�      $	��100��66   $��30��6B   |�.  $��0,-540,0.333,551q�6~   ��.  $��0q�6�   #���  6�   
������ $$ 4��6  $��Disabled=�6  $��0q�6H  .��5�      �� .+�5�      �� $(��"ImageSources\NewSupplierButton.png��6$   $��Uniform=�6P   $	��100��6b   5�      5�      �� 5�      -   5        $# btn_Reports��5�      $	��100��62   $��30��6>   |�.  $��0,-540,0.333,551q�6v   ��.  $��0q�6�   #���  6�   
������ $$ 4��6�   $��Disabled=�6  $��0q�6@  .��5�      �� .+�5�      �� $$��ImageSources\ReportsButton.png��6$   $��Uniform=�6L   $	��100��6^   5�      5�      5�      5�      5�      ]� 5�   
   $��	0,115,0,0q�6   $$ 2��6'   .+�5�       � -   5        &  �Name$& _NavigationFrame��5�      '  � NavigationUIVisibility$' Hidden=�6.   5�      5�      5�      