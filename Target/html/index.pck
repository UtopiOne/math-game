GDPC                                                                                  res://Lvls/Test.tscn�      L      �|��<�4���ȍˮ�   res://Player/Player.gd.remap�)      (       HŊ�C�@p;P*/��   res://Player/Player.gdc �
      	      SWG3�|Vv�z�1�:   res://Player/Player.tscn�      l      �~���}k���ǆ,   res://Player/Projectile/Projectile.gd.remap �)      7       axx&��S9�aJ��u(   res://Player/Projectile/Projectile.gdc  P      H      ����{��s<eg�(   res://Player/Projectile/Projectile.tscn �      �      i���YɼT�>�6C$   res://Target/index/Lvls/Test.tscn   p      L      �|��<�4���ȍˮ�$   res://Target/index/Player/Player.gdc�      	      SWG3�|Vv�z�1�:(   res://Target/index/Player/Player.tscn   �!      l      �~���}k���ǆ4   res://Target/index/Player/Projectile/Projectile.gdc @$      H      ����{��s<eg�4   res://Target/index/Player/Projectile/Projectile.tscn�%      �      i���YɼT�>�6C$   res://Target/index/default_env.tres `(      �       um�`�N��<*ỳ�8   res://default_env.tres  )      �       um�`�N��<*ỳ�8   res://project.binary0*      W
      ����ْR��bԅ��        [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=1]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 57.25, 884 )

[node name="World" type="Node"]

[node name="Background" type="Node2D" parent="."]
z_index = -10

[node name="Polygon2D" type="Polygon2D" parent="Background"]
color = Color( 0.772549, 0.772549, 0.772549, 1 )
polygon = PoolVector2Array( -328, -200, -320, 1216, 2176, 1216, 2176, -200 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 154, 118 )
collision_mask = 2
speed = 700

[node name="Position2D" type="Position2D" parent="Player"]
position = Vector2( 62.6667, -1.35135 )

[node name="Camera2D" type="Camera2D" parent="Player"]
offset = Vector2( 500, 0 )
zoom = Vector2( 2, 2 )

[node name="EdgeCollisions" type="StaticBody2D" parent="."]
collision_mask = 4

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="EdgeCollisions"]
position = Vector2( 963.308, -31 )
scale = Vector2( 115.596, 4.1 )
polygon = PoolVector2Array( -9.54887, 7.56098, 9.69925, 7.56098, 9.69925, -8.04878, -9.54887, -8.04878 )

[node name="CollisionPolygon2D2" type="CollisionPolygon2D" parent="EdgeCollisions"]
position = Vector2( -147.019, 479.999 )
scale = Vector2( 2.82471, 1 )
polygon = PoolVector2Array( 2.30769, 600, 790, 600, 790, 664, 2.30769, 664 )
__meta__ = {
"_edit_group_": true
}

[node name="BulletDestroyes" type="Area2D" parent="."]
collision_mask = 8

[node name="CollisionShape2D" type="CollisionShape2D" parent="BulletDestroyes"]
position = Vector2( 2008, 528 )
shape = SubResource( 2 )
    GDSC         "   �      ������������τ�   ����������   ����Ҷ��   �������϶���   ��������   ��������¶��   ����¶��   ���������Ӷ�   �������Ӷ���   �������Ӷ���   ��������Ҷ��   ��������������ض   �������؄�   ��������¶��   ����¶��   ����������������Ҷ��   ϶��   ���������Ҷ�   ���������������������Ҷ�   �������Ӷ���   �����������Ķ���   ���������������Ŷ���   ����׶��   �������������Ӷ�   '   res://Player/Projectile/Projectile.tscn    �              /root/World       move_up          	   move_down         shoot                ?      timeout                                                  "   	   #   
   )      2      <      E      F      L      R      [      a      j      p      q      {      |      �      �      �      �      �      �      �      �       �   !   �   "   3YY5;�  ?PQYY8;�  �  Y;�  �  T�  YY;�  V�  �  YY0�  PQV�  ;�  �  T�  PQ�  �	  P�  QT�
  P�  Q�  �  T�  W�  T�  YY0�  PQV�  �  �  T�  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  Y�  �  �  T�  PQ�  �  �  &�  T�  P�  Q�  V�  �  PQ�  �  �  �  AP�  PQT�  P�	  QR�
  Q�  �  �  YY0�  P�  QV�  �  PQ�  �  �  P�  Q�  Y`       [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Player.gd" type="Script" id=1]

[sub_resource type="CapsuleShape2D" id=1]
radius = 64.0
height = 80.0

[node name="Player" type="KinematicBody2D"]
scale = Vector2( 0.75, 0.74 )
collision_layer = 4
collision_mask = 3
script = ExtResource( 1 )

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 0, 0.470588, 0.74902, 1 )
polygon = PoolVector2Array( 0, 0, -64, -64, 64, -64, 128, 0, 64, 64, -64, 64 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 16, 0 )
rotation = 1.5708
shape = SubResource( 1 )
    GDSC   	      
   $      ���ׄ�   ����Ҷ��   ���������������Ŷ���   ����׶��   �������ض���   ζ��   ��������������������������Ҷ   ���׶���   ���������Ӷ�                               	                           	   "   
   3YY;�  YY0�  P�  QV�  �  T�  �  �  Y0�  P�  QV�  �  PQY`        [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Projectile/Projectile.gd" type="Script" id=1]

[sub_resource type="CapsuleShape2D" id=1]
radius = 18.0
height = 24.0

[node name="Projectile" type="Area2D"]
z_index = -1
collision_layer = 8
collision_mask = 3
script = ExtResource( 1 )

[node name="Polygon2D" type="Polygon2D" parent="."]
scale = Vector2( 0.5, 0.5 )
color = Color( 0, 0, 0, 1 )
polygon = PoolVector2Array( -24, -8, 16, -8, 24, 0, 16, 8, -24, 8 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 1.5708
scale = Vector2( 0.5, 0.5 )
shape = SubResource( 1 )

[connection signal="area_entered" from="." to="." method="_on_Projectile_area_entered"]
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=1]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 57.25, 884 )

[node name="World" type="Node"]

[node name="Background" type="Node2D" parent="."]
z_index = -10

[node name="Polygon2D" type="Polygon2D" parent="Background"]
color = Color( 0.772549, 0.772549, 0.772549, 1 )
polygon = PoolVector2Array( -328, -200, -320, 1216, 2176, 1216, 2176, -200 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 154, 118 )
collision_mask = 2
speed = 700

[node name="Position2D" type="Position2D" parent="Player"]
position = Vector2( 62.6667, -1.35135 )

[node name="Camera2D" type="Camera2D" parent="Player"]
offset = Vector2( 500, 0 )
zoom = Vector2( 2, 2 )

[node name="EdgeCollisions" type="StaticBody2D" parent="."]
collision_mask = 4

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="EdgeCollisions"]
position = Vector2( 963.308, -31 )
scale = Vector2( 115.596, 4.1 )
polygon = PoolVector2Array( -9.54887, 7.56098, 9.69925, 7.56098, 9.69925, -8.04878, -9.54887, -8.04878 )

[node name="CollisionPolygon2D2" type="CollisionPolygon2D" parent="EdgeCollisions"]
position = Vector2( -147.019, 479.999 )
scale = Vector2( 2.82471, 1 )
polygon = PoolVector2Array( 2.30769, 600, 790, 600, 790, 664, 2.30769, 664 )
__meta__ = {
"_edit_group_": true
}

[node name="BulletDestroyes" type="Area2D" parent="."]
collision_mask = 8

[node name="CollisionShape2D" type="CollisionShape2D" parent="BulletDestroyes"]
position = Vector2( 2008, 528 )
shape = SubResource( 2 )
    GDSC         "   �      ������������τ�   ����������   ����Ҷ��   �������϶���   ��������   ��������¶��   ����¶��   ���������Ӷ�   �������Ӷ���   �������Ӷ���   ��������Ҷ��   ��������������ض   �������؄�   ��������¶��   ����¶��   ����������������Ҷ��   ϶��   ���������Ҷ�   ���������������������Ҷ�   �������Ӷ���   �����������Ķ���   ���������������Ŷ���   ����׶��   �������������Ӷ�   '   res://Player/Projectile/Projectile.tscn    �              /root/World       move_up          	   move_down         shoot                ?      timeout                                                  "   	   #   
   )      2      <      E      F      L      R      [      a      j      p      q      {      |      �      �      �      �      �      �      �      �       �   !   �   "   3YY5;�  ?PQYY8;�  �  Y;�  �  T�  YY;�  V�  �  YY0�  PQV�  ;�  �  T�  PQ�  �	  P�  QT�
  P�  Q�  �  T�  W�  T�  YY0�  PQV�  �  �  T�  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  Y�  �  �  T�  PQ�  �  �  &�  T�  P�  Q�  V�  �  PQ�  �  �  �  AP�  PQT�  P�	  QR�
  Q�  �  �  YY0�  P�  QV�  �  PQ�  �  �  P�  Q�  Y`       [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Player.gd" type="Script" id=1]

[sub_resource type="CapsuleShape2D" id=1]
radius = 64.0
height = 80.0

[node name="Player" type="KinematicBody2D"]
scale = Vector2( 0.75, 0.74 )
collision_layer = 4
collision_mask = 3
script = ExtResource( 1 )

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 0, 0.470588, 0.74902, 1 )
polygon = PoolVector2Array( 0, 0, -64, -64, 64, -64, 128, 0, 64, 64, -64, 64 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 16, 0 )
rotation = 1.5708
shape = SubResource( 1 )
    GDSC   	      
   $      ���ׄ�   ����Ҷ��   ���������������Ŷ���   ����׶��   �������ض���   ζ��   ��������������������������Ҷ   ���׶���   ���������Ӷ�                               	                           	   "   
   3YY;�  YY0�  P�  QV�  �  T�  �  �  Y0�  P�  QV�  �  PQY`        [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player/Projectile/Projectile.gd" type="Script" id=1]

[sub_resource type="CapsuleShape2D" id=1]
radius = 18.0
height = 24.0

[node name="Projectile" type="Area2D"]
z_index = -1
collision_layer = 8
collision_mask = 3
script = ExtResource( 1 )

[node name="Polygon2D" type="Polygon2D" parent="."]
scale = Vector2( 0.5, 0.5 )
color = Color( 0, 0, 0, 1 )
polygon = PoolVector2Array( -24, -8, 16, -8, 24, 0, 16, 8, -24, 8 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 1.5708
scale = Vector2( 0.5, 0.5 )
shape = SubResource( 1 )

[connection signal="area_entered" from="." to="." method="_on_Projectile_area_entered"]
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Player/Player.gdc"
        [remap]

path="res://Player/Projectile/Projectile.gdc"
         ECFG      application/config/name         3 . 5      application/run/main_scene         res://Lvls/Test.tscn   display/window/size/width      �     display/window/size/height      8  +   gui/common/drop_mouse_on_gui_input_disabled            input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script         input/shoot�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         layer_names/2d_physics/layer_1         Border     layer_names/2d_physics/layer_2         Enemies    layer_names/2d_physics/layer_3         Player     layer_names/2d_physics/layer_4      
   Projectile  )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres           