GDPC                                                                                 <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�-      �      �Q!����|M�H   res://.import/pongbackground.png-d22977e64fe65ffece049f6d67fb6f65.stex   >      �E      �h���}o��p-6�@   res://.import/pongball.png-12718aebd9523e447dba2bc6c4f07fc3.stex��      i	      k6�����p�=R��D   res://.import/pongplayer.png-71ceea7e3c7e23cf12bb486c2ee7e4e7.stex  ��      �      ����$��}�k����   res://MainScreen.gd.remap   �      %       �wG]W�w��V��+L�P   res://MainScreen.gdc�      �      ��t�ft�^��q�   res://MainScreen.tscn   `            +{oZM�r�M���y~   res://Settings.gd.remap @�      #       �%�����&��KY���   res://Settings.gdc  �      �       �`���8�aB��4�   res://Settings.tscn @      �      ������lz��~H   res://StartScreen.gd.remap  p�      &       ��_�U�?p�.���_-�   res://StartScreen.gdc          @      ��a� �`wp�ұ�   res://StartScreen.tscn  `      9
      ��UYἒm���ln�   res://default_env.tres  �#      
      �?�թ+Ev�/h�!b�   res://icon.png  ��      �      �~dg`!����I�҃   res://icon.png.import   �;      �      V,��V�z������&�    res://pongbackground.png.import  �      �      ZL��Iy#�Y�i�i^h   res://pongball.png.import    �      �      �A+v,����"�zE�   res://pongplayer.png.import p�      �      Z�QJ7
nL�3t_t�   res://project.binaryP�            ��~L`-MϦ�c ];�GDSC            A      ���Ӷ���   �����϶�   ���������ڶ�   ���ڶ���   �����������ض���   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���           X            res://startscreen.tscn                     	                              /   	   0   
   6      ?      5TT3�  LMR�  �  LM�  �  LMTT3�  LMR�  S�  P�  L�  L�!  LN�  MN�!  LN�  MMMTT3�  LMR�  �  LMP�  L�  MT[  [gd_scene load_steps=7 format=2]

[ext_resource path="res://MainScreen.gd" type="Script" id=1]
[ext_resource path="res://pongplayer.png" type="Texture" id=2]
[ext_resource path="res://pongball.png" type="Texture" id=3]
[ext_resource path="res://pongbackground.png" type="Texture" id=4]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 10, 50.391 )

[sub_resource type="CircleShape2D" id=4]

custom_solver_bias = 0.0
radius = 29.8768

[node name="MainScreen" type="Node" index="0"]

script = ExtResource( 1 )

[node name="player1" type="KinematicBody2D" parent="." index="0"]

position = Vector2( 20, 300 )
z_index = 1
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
_sections_unfolded = [ "Transform", "Z Index" ]
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="player1" index="0"]

shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="player1/CollisionShape2D" index="0"]

texture = ExtResource( 2 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="player2" type="KinematicBody2D" parent="." index="1"]

position = Vector2( 1004, 300 )
z_index = 1
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
_sections_unfolded = [ "Transform", "Z Index" ]
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="player2" index="0"]

shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="player2/CollisionShape2D" index="0"]

texture = ExtResource( 2 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="ball" type="RigidBody2D" parent="." index="2"]

scale = Vector2( 0.5, 0.5 )
z_index = 1
input_pickable = false
collision_layer = 1
collision_mask = 1
mode = 0
mass = 1.0
friction = 1.0
bounce = 1.0
gravity_scale = 0.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = true
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0
_sections_unfolded = [ "Transform", "Z Index" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="ball" index="0"]

shape = SubResource( 4 )

[node name="Sprite" type="Sprite" parent="ball/CollisionShape2D" index="0"]

texture = ExtResource( 3 )

[node name="Button" type="Button" parent="." index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 500.0
margin_top = 500.0
margin_right = 546.0
margin_bottom = 520.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "BACK"
flat = false
align = 1

[node name="Background" type="Sprite" parent="." index="4"]

z_index = -1
texture = ExtResource( 4 )
centered = false
_sections_unfolded = [ "Offset", "Z Index" ]

[connection signal="pressed" from="Button" to="." method="_on_Button_pressed"]


 GDSC                  ���Ӷ���   ���������������Ҷ���   �������Ӷ���   �����������Ӷ���      res://startscreen.tscn                     	      5TT3�  LMR�  �  LMP�  LM[ [gd_scene load_steps=3 format=2]

[ext_resource path="res://Settings.gd" type="Script" id=1]
[ext_resource path="res://pongbackground.png" type="Texture" id=2]

[node name="Settings" type="Node" index="0"]

script = ExtResource( 1 )

[node name="Background" type="Sprite" parent="." index="0"]

texture = ExtResource( 2 )
centered = false
_sections_unfolded = [ "Offset" ]

[node name="Home" type="Button" parent="." index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 500.0
margin_top = 500.0
margin_right = 542.0
margin_bottom = 520.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Back"
flat = false
align = 1
_sections_unfolded = [ "Rect" ]

[connection signal="pressed" from="Home" to="." method="_on_Home_pressed"]


             GDSC         	   %      ���Ӷ���   ���������������Ҷ���   �������Ӷ���   �����������Ӷ���   �������������������Ҷ���      res://mainscreen.tscn        res://settings.tscn                          
                        #   	   5TTT3�  LMR�  �  LMP�  LMTT3�  LMR�  �  LMP�  L�  MT[[gd_scene load_steps=3 format=2]

[ext_resource path="res://StartScreen.gd" type="Script" id=1]
[ext_resource path="res://pongbackground.png" type="Texture" id=2]

[node name="StartScreen" type="Node"]

script = ExtResource( 1 )

[node name="Title" type="Label" parent="." index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 500.0
margin_top = 100.0
margin_right = 659.0
margin_bottom = 114.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "I am Super Mega Pong"
align = 1
uppercase = true
percent_visible = -0.0555556
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="Background" type="Sprite" parent="." index="1"]

z_index = -1
texture = ExtResource( 2 )
centered = false
_sections_unfolded = [ "Offset", "Z Index" ]

[node name="Menu" type="Panel" parent="." index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 500.0
margin_top = 300.0
margin_right = 600.0
margin_bottom = 380.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Rect" ]
__meta__ = {
"_edit_group_": true
}

[node name="Play" type="Button" parent="Menu" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 20.0
margin_top = 10.0
margin_right = 38.0
margin_bottom = 20.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Play"
flat = false
align = 1
_sections_unfolded = [ "Margin", "Rect" ]

[node name="Settings" type="Button" parent="Menu" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 20.0
margin_top = 40.0
margin_right = 12.0
margin_bottom = 20.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "SETTINGS"
flat = false
align = 1
_sections_unfolded = [ "Margin", "Rect" ]

[connection signal="pressed" from="Menu/Play" to="." method="_on_Play_pressed"]

[connection signal="pressed" from="Menu/Settings" to="." method="_on_Settings_pressed"]


       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
source_md5="ae7e641067601e2184afcade49abd283"

dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]
dest_md5="84511021bbc8c9d37c7f0f4d181de883"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST   X          �E  PNG �PNG

   IHDR     X   srt    IDATx���ۖ�8� Z�*���WOwUggpv�m�$�$�s���n�a�	XK7B                                                                                                                                                                                                                                                                                                                                                                                                                                 Z0ܽ���?�ނ3�wo@��_��CW%-.9���>�_���~�ד%y���%-�!C���Ͻ�#��q���;.��xtac��oFU޽���?�p7'®�ݲ��_������+	�7��O����<�^����!ݏ!�0��6do����-���lީ�O����5���=^^�B�#���🋋U9t�V�P�k}�']�/�C�~�ګ���������5�3�ǰ� �i���>�r�w�6�*5�����{+E�.����8����f��������7Ըߎ�kH�g��:�?������Ӈ�ߩ��a~k��K/e��@����=:�@Mo��9� 7�(M�����Vq5	 {�t��8�uoZ߇��>�!���r�Z���uȂ����a�u��P�?w��/�N�8ǈ_�w��:�r|�V�a�(�*���";��4��νܷ�	�E���LR����q)	�}y���;�����I��iñ�[��Ƒt�	��η>z�X��D��yϣ��d�A�]\zo��G��[�e�U�mn�� �ᑹ���_�fk��#6�����L�@C�V�j�k��R���b�T�1?;ט%G��$�|�ʈ`͡�Cg�%.=g\����tO�%/n<o9!��<��=Umێ.ҕ������/ke�����}iVm�XZt(����a���&yK�ܱf��D�ܯ:Ϯ�t����4Ѳ�0q����u{�y,	�M����.U�97�v?��m��.K7�dx@����g&L?ȷg��b�����8�(fa����-�}@^R�'-'U
��s��M�ڗ���*�Զq?	���,zz�����0`>պ�,�(�n�!�>���Y��-�믒��5�+݀��L��c�b���3Ӧ�����⏧L��'�X��t�4rh��>���s����Np���-{I���C ��\χ���u�)����	O�t����!��Sz"��=����Ѧ��að�[�_�~����1�m�Ě�Y����ן��f����#͑ 4f|h�ǃ��Ǿl���_�r�Լ}n�3��۷�����������w#��L ��3l	�󠿘)%y�3n����AO�m�.���+����+��Փ��m� 4f�dp�~��s�b��ic��$�Jw��C��������R^�L�1�L?���S�>|���rj���W��.j�j����6���MW�?�]�xk�]�jݯ޷�i��$�Lk��#�����e_E{��$I\\�G���/����y/�rv�CV�?�+�6��ݽ��*���Ѧ��o�ϧo_^��9��qNL��Z;����+���M�Ty�N�9L׻�.	@���k_�k��h�۵ky7�#M;�G�#��W>&wt��3���9 ?����E�A�:�y겣���z�t?�:8��y��tK�%e��n!���Mm��%��_�QP%hސ�����s_j���Oh��v�vlH��j���t���X�[v�c���q�,]��ٟd��df>wj3��ϯy#���}w[DV��]������q�s���N�������i޽����y�y�$6M�`wM����Y'���~�ŏ�U��4D�+��o+n����'��g��g�+'�n��z^�?�V'��=��'5���~G���/o��+�D�W�С��5�S�Z�����=�MƘ�:�P�@�5�y�����Yׯ��1��ǟ���C�黋����!|�0��fܶ�����s�;��������-zR��_�<S�Iй���W�.�=���`�f�t[Kꩦ�͏߿.ni�C���3�}��`�^f��ć_�_����Q.��#��p(Zq(�9~p����_H��?����%���W�l�P��rg\����j���}���ױ��#o�M��%ŸyS�O�{HҀ��I'�B�J}���}�'8XN�&����=
�>��v�(�`��y�3��/�-�i��^Ҥ�Zq��~��I .W�J2���'�P-ߴܶZv�1����$q�g�p��#�������f��[�߱�Oϟ!|=l*p_4|�ا�#ۿ�-�h���IR%p�|3ٰ�曁���r'� �� |�7�is�:\x�>?S�����̇�,��W�v.�s�b�����!]����a{��dj12W��'�[<��c�+%��{�{/O�0�ݑg� <B��O���׋��f=�8��|�Q�0��ZiTRL��r5ڐm�Ͽ�8���'��T�.���+b�,G�]݃a����5r�5��U~;ݑg� <���Ŗ�nZ�wR{��ƃ\��^���k���1_ܛ�]�N�_3��.�w;�o�:~:/��5<��~uv�]{%���4`�>[�Ζl�AO#x��t�W�X\���%�9@ؖ̇��D�\�H�����g������.��8K)�ny#Dx���ҡ�;0�;)�����F�y�.�E��o�E�;I ^cM_��n�.i�hg�.��~������#N�8�)�`c?�������Go�q3�W�Sgn��E������z�������wOڗǒ �����~뭛�}^}���n|k�������kU��ٲ��ٯ�D���7}7�S�|��rtd/�������{�ϖ�N���ui�i{��;�zƥ��$ �g]� :.?F^��d��wϜ3��v鉶�����c��(9&�.G�� ���
�Dx����Cvt`��k�ζ� �X҅���x���ژZ��Tp'=k����*.n��6;�O�V������k�����q�ƭ���lmxdq[�|��l|�sm��j+&�w�7Ȏ/�c�zپ���A�# �P�8:�lkF�iUn�$���7N\=�,��0��m��gOu%��q͆������x��z����}^/�����I�Ꝓ�F�jޘ�K�$ �j�0o7L�|��7�$�Ӏ�C�'��3�����a�����,$�T���߳�zV�ݥ�*׹�6�܎.�����dt.��؜v�^��ɯ��:�H ��u���Ω���5'Q�T/��7�.@����WB1vO
�����Ӂq��{ƿ�m݅b�G���=���=m9��pM��c������]o<� P2Se���s���4�;i�������-Ґ�������b7��6��z�h���Oc�ʯ>��&3=���(P���X��^a~�%��NލtRo���ŖB�:G�f���+pg�r���E�q}��t[.���O�W?�q�ML?��̪f�%?Ò��l�;r�6��*殺�B��]��]���s�YE����v����;|�����+����s�$Dϋ��r��g�!�3���<E�;v+v�s�w��Y^�hW��������}�-�r����%��=�`	 +�w��BwIq^_�-N���;H�B��Γ�p�~-��7~��7�߻0L���mN6��8⸥��ăQ����s.[穅���H��a���o`��-���~����rRT��ک�ך'M��7�s�]I���~��M��>n�C>����8�¥��@�M]w'o�o�����qns����w�-�ߺ�_����2	 �$Zw׊���K�Q�Z�ᒐG�+�4�X��a�~�?z��$��Bï�?j��w�hH�(�z��/����C�����:��У���J>�I ��1t׺��c�}��$��0� �����t���k��� ���F�,��iw�˚pV��f�3�u_�	�y<��rZ$;R�l��7�~ *�40	=o�n������̌8�Y!�.P^s�;ѯ�|:�?i��H�U�J����2и���޷����.OG��鴑�m����\�t�)	 ��@'5����&��鮎y"V�A*ޣ�5���鏟��- �{1e��7������'7V���W�]���u�;:b�w��sQ�?�� .4����ވ���s�bY���.������W���6�	I��y����1ßC��|=뤋w�v�,né�ƿ����}���_�T>����\��������α�p�#�������$ /3vqY?��.�5䶨�J�������^@���.@q�*h!�_�����kד��`��[�u��/5��ϡ�M:�u�M��� ���t.	L�g�ŎI���M��MRR	��&��:�<@�S;�ѣ�h"��i����`[/ ��J�r��̮�5�o��|w�v�m0�Ep����=u���kğ�e����<QX�՘4�<. �ӢxB��nr�wx�~���3����9�<�Cp�N���W۾dք7��I~��?�p~��"�)~o_T�nB�yC?g�%�ϰ�v��)� �3���遼�����T���9�x\?��)�Cˎv���p��~{/	@����ּj��������㐾��E�qr�oyð��>��������t��2��o���CО�e�6�!0*`���������W��M5�I��I$��<{��0O_p��,�.�wQ��a��y/����+�;�z0��Y<~�=���%����f����Aq@��)�#��3��_E�� 4O�@�^2�Ӄw�cv�g�1���	�5e뎲3�k
�q��9D��7���uL���fͧ�����婒_�~~�$���wLb?�t��s�0�;j��Q����[�����\/��}�6�c.����j��w��U\��i�o������{��%�[�7�;;vv�-��nc�2�o�a�Ӆbi�E\J@�>	��o���+N_1nz[d�?�J3�q�&��_#�	9��N�4	@��դw�ЛC��>Z��RTQ?F�<����=�����y{ԀZa�"���H���������^B�F�x������ʕ�O�M�_컷�t$�awч�΃<��v���<�����<�������+�h������W����i�W2 �	®O�Ygˎts�Z�n�s�$�+��s��S��[�Bp�ˮ?y&�k}B��Š��1��1�>��P�ŉ�syw�fU���}mM���~�S��
O�$ / D�S N�+cS�C�aL����}���=vǶM����M���Ƌ�����iP<�7D?�zl� ^�8��yA������Ku��X�B�lmR1���ą��z7L_���y �I�Խ8�U�$�a !�q��`������x����ju��d�oG�Lk̝� �&n4`!��ȸw�.f3�z�5�;ͫ��?��S�o���T�_~�#�5D�9}�/����߆�=��ƿ��� j|���i`��ԥYN�� �2C?�}?���ʎ����Ya1r髳���B���H2#n���38��!�}��	�'�'0u(*����c����A y��d���|���[uz�uG��$ ��'$p�b�>F��O���(&n}o�3��6�1i���d��=�1<�Y�x��)q^;���h%s��BcᏋ�/�|�ZQ��q+�l!�p���_��x�� ��d�����?,=~���_s?��x�W2�� HQ�A�eg�~�n&����?��إܗ"����'yZ�T�Œ?�U޶��W����g+_we (ya<E�c����!
���,N�3�c N\]خ7�g L��@/��ܹ�I��ǒ���B�1�C����N��ޞ��ڀ�w�5���vZ `B���''��|��5_/�ыq��<XK���)2M�l��I{H `I^�»琵��[��?N	�ߙ@ܭ�ٿ�15Ɣ�;���@ X�d�q��n
r���B�5���/����Э/,��Tw�[L�-t�}Rv�� �^��������CG�c�x&��� ��F� �'�n��r�Y]kO݀:$ ��P���!X�[��ÓT_'����ag��;�c�R�K�&o�P���`M��W�H~Y�I?=���>�'s��X�V����3���9$ �PDIr�L2g�r�?�+�oj�,��?�n}!�z7/W=^����<J$ 7q�y��~��/���R���x��bg�����e�ͅ���U_���N��MU��1�y帛F� %���R�Hu�WTw.��8�P�޳\���-�e�B��|��B�wd.U{��?�f�;�I �cj��k'��,�lg�������~������wm��8ܡb���kkM�?u����G� �d�:��aZ�B/�꺽��n��Z_����PX֩�<C^�&�oP2���o'g� �!��/J� ����/��F�y��X��k��?��k���«��B��GFƃ���QH'i��SH �t����n8����܎Y�f�줇�w갩Ѝ���[��6]9�#��H#��%�ڽ�vr�?�� ��M^yb���3[�Bu��/O֯g�?_�8�� <�6��]��n?��������¿�_'�u��T#hL~'LR�P]\5�\UO:D���������ӀEo��%�z�<�#w����� 4/��PwK�w��DU����C�BP��
��O�z{�l�"�ޑc��[��vNa@?�״!��.F��D4�7ݭ����P8��b�[LЏ�5m̖�E�/��"���I���3�N�]C��8��NZ�*n�"ɒ.�C+$ ��gO�q��p(6��I��M��Q$3�k����u�ݞ�^��zX�R>�X �M�!��-c�CTO28,�(��WS�L%�c����z�~3%�'>~XE�y��7ˣa�!��]�n?������a�;_���}vD����7v.%xA��!��"7�J6��Yh��0����܅*v���Q��"���]��zV34�TH&\-�y�ސ� ����ڗ��������%+�M�x�w}� \N�E����ߔ�]Lw���Л�� gS���5Y�-vn�.���9\u��v�	<�r¦�%i��X��a�+y���!*�� �v&<�ڌ��kd����i�-<� �V�Y������r0�]��Z�N�����T<r"�_�C l��;�aL+�Q#S���%��/��s�����8�7��X��w�B l�n?�x�8&�(v��;~q��P\g�
C!X-���
ߙ�+w<� �b(����q��/�\V�7�V����J�s�'�;��w� �QpZ
ǒ����_h��yj��>ߓ��z"X1!�^q��%:R1l�}����v�y- PI���H�׹���SAj�'9����_������5ܥ��MS~�*_��/
o�w^J T�~�{k�����՘>�+]�ע�k�1��6� �}jE��Z�<���$ p�f�m�'�;�/?O��o߿~���|�^�����^M �&8Gn�|W�p����,c�L��[���U}�$� h��R������痿��#P##�C�A������?�����ŋH �|�U6���=A2w��A�㚠,�fH2�U��ȻK�nI�j��ԥ�?H �o�(aq�^+��-�Q�^ѯ�@�nv���MZ�5�l�Jo`'	 ���v�����a]����3��Mcc_���,Ntd�Lxp]x�5?r7�	 0˴���~��i ɿS���txP�����A�㷩.���Y�I �c��v㮨d�g�G�S�?�| xn��/o��I �-�g�I�������
R��i��s�""�X    IDATgG����	@���Ő�kQz'|���:�:MI·���|��7�!���d�ٿV������7 :&�I���m�l,�+�vIav4��D�{��[�����]E���&!w,��n3��/_~_��_~(�Į��J3�q�X����^@�liwΛg\S�^H �0Du4S����RŠ���d7|�O���T�-��>�#���y����ϻ7��\���:é��$O��Z��0�$�'����ϻ��%�2hÖ8~�vKJ�k�i�HUih@�+�����[�`�˪�0����kX���)�ݍZy��ط��N��<����q^8����:�>�Lw���|Q�T+�ܸ'��*�8�����o���^�p��F�\�ՓG�м����ZW��3�[�����z�
ך!s+n�]�Դ�]-�܃y�H��� �,��F1dW*�#�QɎ6��V� Sgmq�0�-��u�$�l�>?�|�޻[٠6]���8�8�p�P����_ua��g�-�#�Y ߒ����n9�C�Ѷ����hx�����>M.��ϝ�w˻P:��,lM��d:ѥϹG;[��kV-c�/�� �[��P����Evx��F<A�T02�h�; ��i�[e�����65g��=3v�;�t�ُ�t�YG;L�ڂ��d�F6�_={���O�7|������:Z �4��Ц:������59c>ȿ�Ls]��������k���iC�sx�1��ix�a��ϻ7�&�Mq�3|���B�|z���35;I;)�֎I[�4R���^�����6�D��_+�1�����k��M�!�Y�/���2<Ð����<j[s�+-��,�>�n�xoݤ}�����I�W�;����邇�+��u�L�6��Z�+� Tw{*I�2��z����|�UL�ϽzX������]mlO�迓�Z����ϯ��wjʏ@�}�簰@�	��G�1�S����#��[y|�s���5݁��wT��sM��HY'b߷��l{�1a�.@\%ot��]�'���co_�_�~'�|ر⯐Lns����7՟���ZZ �I�	,�6]�]o�J��lް��i
�X�ӯ<..t��[���^���ƫ՛ݰ��vǩL��ܸ�$��'\�ڧlO�>�n�H��N�3>v�N�l�����v���XtI�地�j��UL�6��3{��kbÞ����8��1Fy-7�- �s�[c*�/v��c���μ谦�~Vb�)N���Ko���k�Q���@�fZ�hMM��>Sjc�7n��]��W� ���C�J����Ha���ۿ�� ř�o�f�.V���'��l� �Q� �D�'�zb/�F�7�[���3�L�י��b�k���=�\܉�% ^M O�t��\A�ν�́�mXC6ƒ/�����y�W� �C���23<@rޜ���Q�~D@S�\0G	ݥ�2�5�%x 	 ���y�&sx i��>lޚG�]i���رG��ƌQ�*r=�s�w$yc  ��$N^�4�FVWeH@��$]m�����)X�-vD��U8�<� ����Y"�K>F[=i﮷�! 3���6�4�g#�a�+5�kMz��g07��,)N-��~F��y�N]`��������n�+~�2`뻎4)<�e����v����W���k�L ���M��'U*MM���}�����hq�g;�%���_�D�����O?h�L���'�z��O�����+z;{uUlV�uvI���5�Gz�龼G~���,� {Y�Z�үW�{�T��������X�b������q2+'��4a���sI ���*|(ϱ��{���_}s�p_�oA-�����v?�^B��S�ɨ�x�_߉t��P�^�:Ť�Z�f柕�)����k�����Y+��O0,� ��7�8�^�s4���o���q7����8�C���ig�v�I���v����#�[rv��Dg�>�]o�̏�Jz�G�k��.@w�S�T��89`K��/UN҆���i���@�;�����=�|5�|���Gp	@�� ~%�_r������
WZ���� v"��@a�Oo
���A|�M��!{˘�(u� �����罆���C����x_k���+_���_?R:� �X�8��7�/��3�b���q��[$ ʛrqV/��>|g�I�C��M[Ef�P��O0s�Ob����_�K&�q��Kީ`f�a���;�e�C��T��>��$�������Y���릖�v���/��a��lWw�3����,��/y�������b3-	I��|,�|p9�)���A�/7s���vgS����f��}[��]���_����n����l�앥�@��L�	�I���j3iFȫ-�X�ٓ��� �$�t�,�mS���_�0��>�*�5���fj(�_�}��
��g���Ԛ4`>��A`�Ǯ~��Y��z��^����Dm+������)7&:��VZ�#h~��T_�6��b�x}�]C���q����7�(ݓ p��z�b�V�2��^ �:�,7`�����`w^�%����#�#~G��s���ݦz��Q~q�|�A��bj���G��4����(u�_#�+�8l�N8 <��>�C����,�JG@u[S�5erf�6����o�` A�A�4�cQ><�������nE!��%	�P�'��.ɼ�A��r5�b�@�\9�9�yb�Ś~'�>㔼%$�IY�2t� �h��qҋ=^ ���=��V�(�1(b�[��vKr�H��W�E���f�.��*i���.I  �P���\�t_��"��8��d`q��Ck�6f�����_L���>��g��!"���7ϟ?O:z�.@�J�J0d?���m�Ϧ!������c�/��{�R�٦�������<�)��9s�?凨�a$���u��"x���
���wo�;usw�DI�ʎ��]��0�������׎❉��R����ܷ��Zmgd	�ˌݽ@ac-�b�h`�Y�}�D��0U�,Оp�*�����:�����v��� ��p����t�ݺ���q����ʮAS�6�8�ַM��̯ �%���\Rőc��kP3���V	��\A ϕGa�#�~�'��hPW>7Ɏ7Y�UY���3� �� ^�����ũi(��m�(y�b�@s��8�t�]�s;�hœ���'`	 <ԑ�����9�wWl���L`q�濅�B�������ӭ| ÎN5�t9}>��  K��ɯM�@���3�7�-�$�!��ѿ�s�bW?�i�8Ų2	 @3�v�h���"z����G8mz��>!~���׷��4s�{
	 @UqܵcV�5K�)��z����_�����rܸ��]����I'��?�l1Ÿ28�'�����g�^��'�$��ǆt���q{�?z.X�A����d��''x\u�~$���H@۔|x�b���n���d��B���AÚׁ�$�{^OJ�~�>�J95I 3u�h������f�����ׄ���p��TO�ȗ'Ҁ�OY�0{H �0u�.��8�_���t(�W��G����ގ� �*��oe�y�Ł����[��'Ὶ�nq�>?�z1��_/����"Wqߏ��Ui��� L����qG4�ǒ �j��!�u��I+�'��qC�<��&�k��l������M�0wJnoSw�������3OK��I ������-o�;�>no����l���߭��_�>�}�^	Yw����|=��S��B�F P�⼟�3������OQt�D����/���+�?���[K#�G O��Ak2��D��;�� L�����F�X��TŞ5��� �H ���k����~���!Z>_�W��*7(��~G����__�c�Ğ��}�,]���:�	���B�͋��G��m�N�%f�]���t|J�w�d�f��jZYlrY��}o%���..�`�I3��'���@��� �L P���q/E���3��*U�����Cp+	 �	v��$c0��a���y��������!��U���֙�( l# hI1s�zV�̋W�#���O���_!��{��Q���	 �S�6x��?���q2��E� 	 @w�1��yT�_C��!�?C���ŉ�歙���$  �%���~P�?~E�C��_/d9@1�_���'��Y	 �$  u��<���=���f��c����O �A���S�?��_�߿�E����% '� ����v�f�!{Dpq�J���$�'^�+��!cV:�?���&�H ����=%��ǿ�AV�z>���I�`��~����Lp�����8$���q>I�� ,�^��P~_�d��f��~��g1�����Gq�0����Ţ7�-��@�$ ���MP.w�h���Я�3	(�,$�P1���<!.�S�wM5Τ�r x
	 @]g�HM�/4���I��- !3��a�z毬1�5k~��|��oz&���3g>�Wϧ�0����d��Ӄ�[�<��wo���7�M�7]ۆ�x��A�8���_��2~�V�7�~.�c���va㗤0�w'Slx=	�-�ReWҿ2���0�����E��"�Ҿ@����#?NX�`����4�ʟ7��>S���-t��"�K��L����1����S����p�#�~����~X��HJNq4s�@��1Z��!7�%	���$C���*�� ���n���~���A���2��r�2��C����$H<��^�~>acܿr��5*�w�����������9@�� ����L����9�h� �;��bm�b���l U(N��1  ��:����w���)���z���@@;fF�̷�p	 �O2���[�峃Û�_,l�Lܟ,f(0��8���2�4��M|ג  ��̳�����m�@k��#7a"2��֬
�L2D'O��M�wMu��5��d� �S��oɧ������z���#��}3���,��&+Z?��p�x �c�I�	?�Ӷ8�R\J�&����� �8�2���*[��C���?Ō��\@�����〵�7�4WL��bc]�@�'�?�V����6.�
���r��]�fk���k˦B�5���Hb��P����#�S�5�c���&���;�Ђ�æӃ�C���)A��y�\�;ϲLZ03M�"z	��z�Og9�˿���w�9������&���\��/N��ꥌ��*�֦�j��7SC�,�A3�V>����&�h���%�͎�?׶��V���Y_������
F���{ �����s՝�~@��t+g/� ��{ų4=�  �aG�o��*��Pښqe��f�9����G�  Ե>"_?����B�! ����8���'�� ����|����D|��`���o`	 PQ�QiS����	���/w*,��v ��L
�7faW>$��0�A��|����O
��a�r �]�  +%Q���۠�"���\�?i��-v��1?o��K�  I�fK6��AU>�sU����?�mI�W�b�=,����]��]�I�2  �Vy\��~�����1},�V?����s�S��?/6�C�7]����.��w���H�0�@�}��7W��䑽/����+ŷ�kH ��I��b��V�&��o$�WA\��Vv��M�� �}prވ�E|��?�$ /�np����Ύ>?M|�C�-Y?�yjE+?���o�i7�Ɓ<x��$ ��������;XS�O����������k]�:�V�{�����W�O���e�:g��_�)V�����nM�����_�~�s;��A�r�*����6��O'��̍2���ގͻ1�a��\le��Yx��۲o�&��9 �J*�5�˘�vɴ��\eɵy���C�k���+@*��y�i>@&�e�@ ��O��G�p��"?鱓_�U�CG�t����?,��?�;���ϥ�.y�}<`w������<��y������&x�S켮;ɸ�|�L��Lp��+��*�'�ex����W��8�x�,�w���>i�v�s� ����$�χ�uG9�y�!��G�;��ID�
O! 6I�j9���N���o���� �.@���(_����~
���܀��K6�K��i f���v��_3m.��1~Z�ι�x0����v  d�����}s}6��M۲a@�|�|"�i  y�-�O�|&���ӻ*_������$ ������hm��$�G�g���΋n�ޖr��A$ �T�O٧�O[�F�bH8�r�?� ����1���U �3-<���3[}����q������
[� ����ӈ5�6D�mV�V,d:��q㸩Ǿ'��L?4� ��1�[�w�|�֤Ź����'�������Ţ��2n��PJO# 8��旾�n�����a�j�!읊���(1�6���O���I ��t7���S~��;�]��n.m�bt����^��Kz�w����)W�o��߿�,=�"Jm;��Y�ص��?�ߡY�U̯�c�UojjS��ūC��+�i� \�e�g�+���_�ܲ*��o�.�P����u����&���iM�/�/�B��)�tj�n�6]b���,N��k���A}�^@�&�Ѿ��H�*��^��UKϢ����ӵW�!�?��6��Q���T�?��:⮕��+�ǮN�O�o���^\oZ��6a�e����	 0e�=��!���8�u�[�w���r�2�ž+��V�;Lu]��ɸ��O(6d�~^ߛ!���f w��C ]���3>h��4�|�I�M1�_�
Y�!�1�Њ<����g�쮕�U|/'���[���c�ݝF7�q��]s8������/�}�-헹M�YP[Ho(�Ԧ �u_D\�������ֹ2�o�O��UYW�;=8o�Y�J���x^f�L%��욯�6	 ��I!�⇞w_=��[������ߣb�D��n)D��V�S%W,�O!x->n�ף�1���[eͅ�:���J�W�*V�o�~- ���9..���e�ڌx	�͛�s��s���
�y�ud��֨2>z�K�\a��0w�ќ:@�P�#y\�l�����g��I��d�PH���>�7��|�{o�ΰ�H���o6����vT�O����ܙ��A����'/B$ �����\n�ovW1��q����׳�Ck��|L�Ԡ7�fj�ﶕ�\U1Sc�q��-o"p���}IU�'��s��W���<�s����V�)���A�8�s�vE/�ʆg����������e�wȒT���2.6��.g���}+�[�_^l}C��:t�/��N��Ӧ����y\Kв����>���-�,Mm͑qW,�2��bj�ɡ��3���B֓�W�$9�����P}�}$ ��������~>p���]����_~��?�D?۹g|sL/�s�����9�ԟ�L�[�~��@_�O�N��'T�{A�������Y��"�
�"8Q�5Ek���_A�p)	�->/w��NpD�6ղݡ�˗[ߡ͒��
��^@����'��o��I ���#4I�פ�u*.ytwVF��\M��vO66�����4�G�J�0|����� wvh^+��`���:���� �����]�_�X�.��ȃ>;x�sy.- @����c|[��˛4n��Se�˥�o#gB'�4$�����BP|�0T" b�w�ҝ��ھ���K�n/@��%8KZf�~�s2	 �qjX��!�2����l�U[��0��;u���;�!1������K��J�h�R�|XG o�OG{����#+��e����O�����q0�:��Ƈ����fŔl͈�76�  ����q0�8uO'׼)���N���=�7h��voj���4�a��yz@�	B� ��\9���z%��]=��o#�I�b��l�F��.�5��h2�U�Ƀ����U�i x���_�����������	*��_��;x�a��k|���f)��ȶ��g�wܜB|� x�{��٩  iIDAT�n�������a�*;�����r����;���}�_S��^L <U|߻�C��O���z��_���'^_4����\�H�2���r������$-�c����BZ ��.����UI}7\��E����%�� S�n���Lz�YL�l����� ���"Nz2���
n17���� �C�x�x �ێ̚��'��,�ܺ6�& v;#�;X������tg��O��{���<�����l�'����0Sz	�����8�kݕ_c�ε���C�?o�0�Q-�۳C��Ͻ��Qm_R`�d@ �?	��\c��p���UV����5{
m�=����ec��o.|Mh|�[%���}���_�~|=�2��I!h���Xɾ�n5��l��Uc����c�x)=��� :>��R��(WM?�  S�y�Θܳ�j��dǐ߹�l�_7u7X�pc��l��?M�o-���x�@X�$͐ �A[��8�*��
��D�cG����5{8M� �..�p5}��G��S�%�l�45l@���.@o�E�}N
���y:XՉ�w��&H�>�rgX$�*~�B��Aûix	��=��]���k���MR����K�u��z��~��d#@[��S�����(�"�f�(^K���Mn���b�=����yB'��0�ٿ��q6厱�T�s��I��&X�>Z �'olsdѩ���V��������?[�_��������.��6g7�>XR�o��i�]ҡ�9�JyKQݒS��}���\��������$�J�h����{&v�*��N
����{��t��Jm������c����5�-iWxoa��j�0�qT�]�w�`�i�[p�Y>����Ͽ�咀8y���{                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           `���;�d}�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pongbackground.png-d22977e64fe65ffece049f6d67fb6f65.stex"

[deps]

source_file="res://pongbackground.png"
source_md5="ac7bf90d2941073394db3eab3d608c6a"

dest_files=[ "res://.import/pongbackground.png-d22977e64fe65ffece049f6d67fb6f65.stex" ]
dest_md5="e28468d605e97f927d6f80c9702d36a4"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST<   <           M	  PNG �PNG

   IHDR   <   <   :��r  	IDATh�ݛQl��ƿ��QEG��&�T�r��/K�9N�ah��Y�X���F���I�=�o}���m	�v���/N��v]Q4M��iZ�Ml�a+�^l9�%�X]ɥ(���`ɖe�qɲ�
I}�xw���	V	# ���ܾ��b�qf�s���r ; ��)*JR�� l)G����@��ݜ� �U��5���WT���0�ȗ�BY`��@J��o��ʸ�{�Β���
�x0 ��/�t�`�[��X���P � ���f��F���=b�J�HET�y����F���d��D	]��k޲,|01�3��3��CQ���M ��X}��f�,�p�]d���� c����ww?���|Ղ�ɻ.�f28y���U.�/
q�{��J�+�z�+�5�R:w�2�����[5��too�P,v֖�p>���T���q�c >[�le�H��Z����}�g:�y�;*��~��hg'�2�V#����t��v�r���y��W~�6[�������L�1v1�յ��=��F�Y1�814T:�NO���(��zf�Y���@1%~y[g�!������D_ݽ�+U5a�Q(�O	�]U��99�K0�TaU?�W�֘&���tE������޶mm��
�Fɏ�?������� �T~[�b�lCT*��:�_����拾>���k��H~����z����3\Y��AIJԭ�U'�Xc췟<�o7��_%���5�~'|� �t_=W=+}gU3�3����GiۿeKs7�K��x�ҥ�B�0,�5�����4��)��~�ZOOt==��#ih��SS?S)}3�X	���R�	Ӕ���I&����ݍ2�!{�Q�6M�?33{ ��L[��������7��[���-��x�}��R�ρ�AI������s`��S����u�"��RĂA~qrr_��?yU�~�+x�S[5-y���:J*�Ė@ Y�'+�|ߟ�|�G�1d����^c���̈́��{�A�N㕂��-�K�D65�g�9�aW$�</U�G#���������wt�
������>VU�Uʴ�@�� ��'�x�56���q<�A �#�I���o_4�4j�b=����%G�C @#�#�y�h2��jq�"�յ)�y*�9�-���;�H�ZW�8�H��1[Nm)wlVUy����tU���;(�x\�E�E5�X0( �(�X���n�f��6�1F)�H�BZ�5��ahHР�$;B�{�?��C׹�X'�(튕�z�e�������[�������t2�[�Z���x�p�u�θe��cT�B�n��f�6M[@vܲ/��cܜ��� 2�ژ�uw@�Xd(����	�j���q˲����A#��c�>��h������4�>�p�Ҝ�"��g���Z-�Y���\�?�s�x�~󍺒(��F�q08= p h���]UMCQ���dZ,���fR�/7���YUAs�����Sׯ������p��u3�8o�y�Y�>���\.>�m���s>��W�\�An ��Bܢ/�08hʻ�Z/H��fQ���̯�-XVywҶ�g��Z"����Ә*�F�W�G������u��<4d�b�Ns�B��k׬�=&|߯��qL >s��|bh���J�����+�(���Z����Շ���=ۮ�m���ZJ|cxX��믳���c��r�x5��;��}t�@ہ�[�H��Q�������S<5#�aGʧ��|�8b���y�4����EG�'Q6,�4k��"Z9&����p�ZϦGL.\�l!~�Bm"0�@m=�	ԼR�<�/7n���}���:P�dr�\�X̻�+ NUGV7����%�R�������ؑh ��KC���|��/L[�#���+��2�	��V�
E�i(�ţ�d�Ç����2=�QF�0���}���;�P�0#��҇_���S����� qW�O��?cz^X����P1�TT* �]��M���%H�޻�8��]��2� �e�xq`�0U*�̸�0矗u�WkzE) �'/a ��sR�'������_��6op��G�N�'y)��f\ׯ�g)���Q���j ��ª�\���mo/���6N$��*�x�~�Τ�3��Ӂ��|�w��tE�/
�(�g��JVdx�;	�g��U�3)E8O�B<QU�6]�I�v�/߄�eaܲ��ioZ���,�8Tc�������)��/g�U��-W���p=��U�V���Bp[� b�]}Oh�uj�m [�[�1	L ��j����K�۬��70���>����    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pongball.png-12718aebd9523e447dba2bc6c4f07fc3.stex"

[deps]

source_file="res://pongball.png"
source_md5="2db448ebf311b8f2ada537e0fbd2e5b5"

dest_files=[ "res://.import/pongball.png-12718aebd9523e447dba2bc6c4f07fc3.stex" ]
dest_md5="6b36c18616a79f82067018a03d52b292"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSTP   j           �  PNG �PNG

   IHDR   P   j   +��f  HIDATx���1N�@@�1J�� ��_&�o@ojP(��@�I۬��9�yf�_>����̜�v˲,������g��r���z�7�u�m����^�6��( * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * Z�w���O,�¾�_��ff�G�p:j�wn�S> �)㮦4    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pongplayer.png-71ceea7e3c7e23cf12bb486c2ee7e4e7.stex"

[deps]

source_file="res://pongplayer.png"
source_md5="bf9bae446d470e234b39bb748f7e6c39"

dest_files=[ "res://.import/pongplayer.png-71ceea7e3c7e23cf12bb486c2ee7e4e7.stex" ]
dest_md5="e09ad8d42410b6bd7dc16bdae0ce1ee0"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     [remap]

path="res://MainScreen.gdc"
           [remap]

path="res://Settings.gdc"
             [remap]

path="res://StartScreen.gdc"
          �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name         iSMPong    application/run/main_scene          res://StartScreen.tscn     application/config/icon         res://icon.pngn )   rendering/environment/default_environment          res://default_env.tres                 GDPC