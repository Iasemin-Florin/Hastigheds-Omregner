   M S B A M L   `   `   `  ����N  JHastigheds_Omregner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Hastigheds_OmregnerHastigheds_Omregner  5   	   $    Hastigheds_Omregner.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Hastigheds_Omregner     5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  69     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6    � WindowStartupLocation$ CenterScreen=�6;   $
��1000��6`   .��5	      �  � RowDefinitions 5
   
   �� 5      $��60 �6   �� 5      $��80 �6   �� 5      $	��150 �6   �� 5      $	��100 �6   �� 5      $	��150 �6   .+�5   
   �� $��2��6   $	��950��6    �� CornerRadius$ 10��6*   $��5q�6<   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,0&�67   .��5      �  � Color$ #000000��6#    � Offset$	 0.0Q�63   5      ._�5      �� $��2��6   ��5      �� 5      $	 0,0&�6*   $	 1,0&�6;   .��5      � $ #FFE042��6'   $	 0.0Q�67   6F   � 5      $ #E71989��6'   $	 0.5Q�67   6F   5      5      5      �� 5    
   $��2��6   $
��1000��6"   $��60��6/   	 �� Orientation$	 
Horizontal=�6;   $��Center=�6T   $	��Top=�6q   .+�5!      �� $��Indtast Hastighed:��6   $��20(�61   $	��170��6?   $��40��6K   $��Bottom=�6W   
�������$��	100,0,0,0q�6�   �� 5#      $
��Fra:��6   $��20(�6#   $	��150��61   $��40��6=   $��Bottom=�6I   
�������$��85,0,0,0q�6w   �� 5%      $
��Til:��6   $��20(�6#   $	��150��61   $��40��6=   $��Bottom=�6I   
�������$��	170,0,0,0q�6w   5&      �� 5(   
   $��2��6   $	��800��6"   $��90��6.   $	 
Horizontal=�6:   $��Center=�6S   $��Bottom=�6p   .+�5)      �� -   5        $��txtSpeed��5)      $	��200��6&   $��30��62   $��0,0,0,0q�6>   $��18(�6z   $��Center=�5*      $	��Top=�68   6R   �� 5,      -   5        $��cmbFromSpeed��5,      $	��170��6D   $��30��6P   $��	60,0,40,0q�6\   $��18(�6o   $��Center=�6}   $	��Top=�5-      
 �� MaxDropDownHeight$	
 150��6/   6I   "  FontAwesome.WPF.ImageAwesome  5/         Icon$ Exchange=�6   $��30��6.   $��30��6:      
Foreground
 �����$	��Top=�6X   $��25,0,0,0q�6p   6�   �� 50      -   5        $��
cmbToSpeed��50      $	��170��6)   $��30��65   $��	60,0,40,0q�6A   $��18(�6T   $��Center=�6b   $	��Top=�51      $	
 150��6/   6I   52      �� 53   
   $��1��6   .+�54      �� $��30(�6   $��Times New Roman)�6"   $��Center=�6?   .��6\   Hastigheds Omregner6q   55      �� 56   
   $��3��6   $	 
Horizontal=�6"   $��Center=�6;   .+�57      �� -   5        $	��100��57      $	��300��6"   
������ $��30(�6G   $��Times New Roman)�6U   
������ .��6�   Omregn6�   �� 58      -   5        $��txtConvertedValue��58      $	��100��6-   $	��300��6:   
������ $��30(�6_   $��Times New Roman)�6m   
������ $��Center=�6�   $��Center=�6�   6�   59      5:      5;      