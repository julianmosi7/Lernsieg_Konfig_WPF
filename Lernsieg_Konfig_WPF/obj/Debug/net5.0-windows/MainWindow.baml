   M S B A M L   `   `   `  ����O  KLernsiegViewModelLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY@clr-namespace:LernsiegViewModelLib;assembly=LernsiegViewModelLibLernsiegViewModelLib  5   	   N JLernsieg_Konfig_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Lernsieg_Konfig_WPFLernsieg_Konfig_WPF 5   	   $   Lernsieg_Konfig_WPF.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   W
viewModels@clr-namespace:LernsiegViewModelLib;assembly=LernsiegViewModelLib     5   	   3local!clr-namespace:Lernsieg_Konfig_WPF     5   	   1catelhttp://schemas.catelproject.com     5   	   -   5          � Title$  
MainWindow��5
   	   $	��692��6   $	��712��6)    � DataContext 5      ,   &LernsiegViewModelLib.LernsiegViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��453* �6   �� 5      $
��289* �6    � RowDefinitions 5   
   �� 5      $
��734* �6   �� 5      $
��179* �6   .+�5   
   &   System.Windows.Controls.DataGrid  $��0��6   $��0��6    ��5      �� *	Schools+ �� SelectedItem 5      �� *SelectedSchool+� 5"   
   $��0��6   $��1��6    5#      �� 5$      $
��128* �6#   �� 5%      $
��307* �6#    5(      �� 5)      �� 5*      �� 5+      �� 5,      .+�5/      �� $��0��6   $��0��6!   $��Schulkennzahl��61   $��3,3,3,3q�6I   �� 50      $��0��6   $��1��6#   $��3,3,3,3q�6V   ��63   �� *SelectedSchool.Id+6V   �� 51      $��1��6   $��0��6!   $
��Land��61   $��3,3,3,3q�6@   �� 52      $��1��6   $��1��6#   $��3,3,3,3q�6[   ��63   �� *SelectedSchool.Country+6[   �� 53      $��2��6   $��0��6!   $��Schule��61   $��3,3,3,3q�6B   �� 54      $��2��6   $��1��6#   $��3,3,3,3q�6X   ��63   �� *SelectedSchool.Name+6X   �� 55      $��3��6   $��0��6!   $��Adresse��61   $��3,3,3,3q�6C   �� 56      $��3��6   $��1��6#   $��3,3,3,3q�6[   ��63   �� *SelectedSchool.Address+6[   57        59   
   $��0��6   $��1��6    ��60   �� *
Teachers+� 5;   
   $��1��6   $��1��6    5<      �� 5=      $	��84* �6#   �� 5>      $
��193* �6#    5A      �� 5B      �� 5C      �� 5D      �� 5E      .+�5I      �� $��0��6   $��0��6!   $��Titel��61   $��3,3,3,3q�6A   �� 5J      $��0��6   $��1��6#   $��3,3,3,3q�63   ��6D   �� *NewTeacher.Title+�� 5K      $��1��6   $��0��6!   $
��Name��61   $��3,3,3,3q�6@   �� 5L      $��1��6   $��1��6#   $��3,3,3,3q�63   ��6D   �� *NewTeacher.Name+�� 5M      $��2��6   $��1��6$   $��3,3,3,3q�64   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6e   ��6E   �� *	Schools+ 6�   �� *NewTeacher.SchoolNumber+�� 5N      $��3��6   $��1��6"   $	��Add��62   $��3,3,3,3q�6l   ��6@   �� *
AddTeacher+ �� Mode$ OneWay=�6l   5O      5R      5S      