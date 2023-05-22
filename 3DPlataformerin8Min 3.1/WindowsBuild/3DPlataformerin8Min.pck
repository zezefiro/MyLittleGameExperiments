GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      �p��<f��r�g��.�@   res://.import/polycat.dae-15402bf986e08e1f5a694bbdd780a257.scn  -      �>      �����9f�d�k��b   res://Player.gd.remap   ��      !       ��0�F �qq��dX��   res://Player.gdc       	      �~Vp���!"��ۇP   res://Player.tscn   @      �      �K�u��nZv��Z���{   res://World.tscn       @      +����6'O�H�Q�:   res://default_env.tres  @      �       um�`�N��<*ỳ�8   res://icon.png  �      i      ����󈘥Ey��
�   res://icon.png.import   �*      �      �����%��(#AB�   res://polycat.dae.import�k      �{      �h�/����ch叱��R   res://project.binary��      �      �W�8����=��syY        GDSC   )      =   �     ������������϶��   ����������   ����������   �������   ��������������   �����������   �����������   ��۶   ������Ӷ   ���۶���   �������Ŷ���   ��������������Ķ   �����ٶ�   �����϶�   ������������ض��   �������ƶ���   �����¶�   ����¶��   ��������������������ض��   ���������������Ŷ���   ζ��   �������Ӷ���   ϶��   ���������������Ŷ���   ����׶��   �������ն���   ����¶��   ����������������Ҷ��   ̶��   ���������Ҷ�   ������Ҷ   �������ض���   �������������Ӷ�   �������Ҷ���   ����������Ķ   ����������Ҷ   ���������������������Ҷ�   ��������۶��   ���Ӷ���   ����������������ض��   ���϶���              \���(\�?     �?             walk         Z         move_forwards               move_backwards     
   move_right     	   move_left                jump  �������?      idle                                                    	   "   
   #      *      3      4      9      :      @      L      M      T      Z      h      |      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '     (     )     *     +   "  ,   &  -   *  .   2  /   7  0   >  1   C  2   D  3   H  4   M  5   Q  6   _  7   d  8   g  9   l  :   s  ;   {  <   }  =   3YY:�  Y:�  �  Y:�  �  Y:�  �  YY:�  �  Y:�  �  YY5;�  W�  Y5;�	  W�
  �  YY;�  �  YY0�  PQV�  �	  T�  P�  QT�  P�  Q�  Y0�  P�  QV�  &�  4�  V�  �  T�  T�  �  T�  T�  �  �  �  T�  T�  �/  P�  T�  T�  R�  R�  Q�  �  T�  �  T�  T�  �  Y0�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�  �	  �  &�  T�  P�
  QV�  �  T�  �	  �  &�  T�  P�  QV�  �  T�  �	  �  &�  T�  P�  QV�  �  T�  �	  �  �  �  T�  PQ�  �  �  T�  P�  P�  R�	  R�  QR�  T�  Q�  �  �  �  �  T�  �  �  �   P�  R�  P�  R�	  R�  QQ�  �  ;�!  �"  PQ�  �  �  �  ;�#  �  �  &�!  �  T�$  P�  QV�  �#  �  �  �  �  �  &�!  �  
�  V�  �  �  �  &�  	�  V�  �  �  �  �  &�#  V�  �%  P�  Q�  '�!  V�  &�  T�  �  �  T�  �  V�  �%  P�  Q�  (V�  �%  P�  QY0�%  P�&  QV�  &�	  T�'  �&  V�  .�  �	  T�(  P�&  Q`       [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://polycat.dae" type="PackedScene" id=2]

[sub_resource type="CapsuleShape" id=1]
radius = 0.600211
height = 0.355221

[sub_resource type="Environment" id=2]
ambient_light_color = Color( 1, 1, 1, 1 )

[node name="Player" type="KinematicBody"]
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-008, -1, 0, 1, -4.37114e-008, 0, 0.760978, 0 )
shape = SubResource( 1 )

[node name="CamBase" type="Spatial" parent="."]

[node name="Camera" type="Camera" parent="CamBase"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5 )
environment = SubResource( 2 )
current = true

[node name="Graphics" parent="." instance=ExtResource( 2 )]
transform = Transform( -1, 0, -8.74228e-008, 0, 1, 0, 8.74228e-008, 0, -1, 0, 0, 0 )

[editable path="Graphics"]
               [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]

[sub_resource type="CubeMesh" id=1]

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 0.858824, 0.176471, 0.176471, 1 )

[sub_resource type="ConvexPolygonShape" id=3]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="World" type="Spatial"]

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 0.751616, 0, 0.659602, -0.48384, 0.679652, 0.551336, -0.4483, -0.733534, 0.510837, 0, 0, 0 )

[node name="Player" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.751616, 0, 0.659602, -0.0295131, 0.998999, 0.0336302, -0.658941, -0.0447438, 0.750863, 0, 0, 0 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 6.30055, -0.13079, -0.708288, 0.0277642, 1.50881, -0.0316372, -0.249782, 0.0834019, 3.75832, 0, -2.86676, 0 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance2" type="MeshInstance" parent="."]
transform = Transform( 6.30055, -0.13079, -0.708288, 0.0277642, 1.50881, -0.0316372, -0.249782, 0.0834019, 3.75832, -10.444, -4.5457, -4.27668 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance2"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance2/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance3" type="MeshInstance" parent="."]
transform = Transform( 6.30055, -0.13079, -0.708288, 0.0277642, 1.50881, -0.0316372, -0.249782, 0.0834019, 3.75832, -21.1853, -1.73879, -8.54705 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance3"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance3/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance4" type="MeshInstance" parent="."]
transform = Transform( 6.30055, -0.13079, -0.708288, 0.0277642, 1.50881, -0.0316372, -0.249782, 0.0834019, 3.75832, -7.98807, 1.45224, -17.5056 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance4"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance4/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance5" type="MeshInstance" parent="."]
transform = Transform( 6.30055, -0.13079, -0.708288, 0.0277642, 1.50881, -0.0316372, -0.249782, 0.0834019, 3.75832, -22.9174, 6.96097, -19.3239 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance5"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance5/StaticBody"]
shape = SubResource( 3 )
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
RSRC                    PackedScene                                                                 <   	   Armature 	   Skeleton    body    head    leg.l    leg.r    tail    resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    script    length    loop    step    tracks/0/type    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/imported    tracks/0/enabled    tracks/0/keys    tracks/1/type    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/imported    tracks/1/enabled    tracks/1/keys    tracks/2/type    tracks/2/path    tracks/2/interp    tracks/2/loop_wrap    tracks/2/imported    tracks/2/enabled    tracks/2/keys    tracks/3/type    tracks/3/path    tracks/3/interp    tracks/3/loop_wrap    tracks/3/imported    tracks/3/enabled    tracks/3/keys    tracks/4/type    tracks/4/path    tracks/4/interp    tracks/4/loop_wrap    tracks/4/imported    tracks/4/enabled    tracks/4/keys    tracks/5/type    tracks/5/path    tracks/5/interp    tracks/5/loop_wrap    tracks/5/imported    tracks/5/enabled    tracks/5/keys 	   _bundled        
   local://1 !      
   local://2 �      
   local://3 �#      
   local://4 |*      
   local://5 �7      
   ArrayMesh             Cone       	         array_data    �
  �?zH�y�?>O�     ��      �XĻzH�E9��O�     ��      �XĻ���?��=O�    ��      �Rx��;?�aſ?�    ��    :�H͘>��?�    ��      "	#��8h?(,��?�    ��      �XĻ���?��=��    ��      �XĻzH�E9����     ��      8�zH�y�?>��     ��      �?zH�y�?> ~     ��      �XĻ���?��= ~    ��      8�zH�y�?> ~     ��      �XĻzH�E9�� �      ��      �?zH�y�?> �      ��      8�zH�y�?> �      ��      "	#��8h?(,��(aF    ��      �XĻzH�E9��(aF     ��      �Rx��;?�aſ(aF    ��    �XĻzH�E9��c��     ��      :�H͘>��c��    ��      �Rx��;?�aſc��    ��    :�H͘>�濌�    ��      �XĻzH�E9����     ��      "	#��8h?(,����    ��      ��b> �轄�>� �    ��      �[�>�D½�2�=� �    ��      =��>�_|��T�=� �    ��      �[�>�D½�2�=�w%    ��      ��b> �轄�>�w%    ��      ;	�>˽m>�w%    ��      =��>�_|��T�=L�    ��      �[�>�D½�2�=L�    ��      ;	�>˽m>L�    ��      ��b> �轄�>��|    ��      =��>�_|��T�=��|    ��      ;	�>˽m>��|    ��      �XĻ���?��=      ��      �l@?�@��=      bԜ+    X�;��@���=      ��6    �0v?�{�?(H�<�{    |ق&    �l@?�@��=�{    bԜ+    �XĻ���?��=�{    ��      �|?z\@��=�z    ��f-    �l@?�@��=�z    bԜ+    �0v?�{�?(H�<�z    |ق&    �XĻ���?��=��{    ��      X�;��@���=��{    ��6    	pq��{�?�F�<��{    ��#/    X�;��@���=��z    ��6    E�w�z\@��=��z    ��Y8    	pq��{�?�F�<��z    ��#/    X�;��@���=      ��6    �l@?�@��=      bԜ+    H��>�@Vҹ�      ��S    '���@�ҹ�      3��    H��>�@Vҹ� Ҋ    ��S    �XĻ���?��= Ҋ    ��      '���@�ҹ� Ҋ    3��    �0v?�{�?(H�< ы    |ق&    �XĻ���?��= ы    ��      H��>�@Vҹ� ы    ��S    �XĻ���?��= ы    ��      	pq��{�?�F�< ы    ��#/    '���@�ҹ� ы    3��    E�w�z\@��=hH     ��Y8    X�;��@���=hH     ��6    X�;��@"r�hH     ��f5    	pq��{�?�F�<��    ��#/    E�w�z\@��=��    ��Y8    X�;��@"r���    ��f5    '���@�ҹ���    3��    	pq��{�?�F�<��    ��#/    X�;��@"r���    ��f5    X�;��@���=      ��6    '���@�ҹ�      3��    X�;��@"r�      ��f5    �l@?�@��=�H     bԜ+    �|?z\@��=�H     ��f-    �l@?�@�r��H     ��',    H��>�@Vҹ�      ��S    �l@?�@��=      bԜ+    �l@?�@�r�      ��',    �|?z\@��=,�    ��f-    �0v?�{�?(H�<,�    |ق&    �l@?�@�r�,�    ��',    H��>�@Vҹ��    ��S    �l@?�@�r��    ��',    �0v?�{�?(H�<�    |ق&    %��� �轄�>��    ��      汏��D½�2�=��    ��      �p���_|��T�=��    ��      汏��D½�2�=�w%    ��      %��� �轄�>�w%    ��      aR�˽m>�w%    ��      �p���_|��T�=L�    ��      汏��D½�2�=L�    ��      aR�˽m>L�    ��      %��� �轄�>��|    ��      �p���_|��T�=��|    ��      aR�˽m>��|    ��            vertex_count    d         array_index_data    �             	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 3 6 5 7 9 8 : < ; = ? > @ B A C E D F H G I K J L N M O Q P R T S U W V X Z Y [ ] \ ^ ` _ a c b       index_count    f      
   primitive             format    �}       aabb    E�w��_|��濒T�?^t]@���?      skeleton_aabb          E�w�zH��aſ�T�?�*@|`�?   E�w����?�ҹ��T�?�^?b�T>   ��b>�_|��T�=�?>�d?>��=   %����_|��T�=�?>�d?[��=   "	#�H͘>�濚�?>�?�g�>      blend_shape_data        
   Animation ,            idle         �@      
   transform                                                     !            �?�r����> ��:              �?�P�>�P�>�P�>  �@  �?�r����> ��:              �?�P�>�P�>�P�>      
   transform                                                          !            �? ���f+�� ����          �? �? �? �?  �@  �? ���f+�� ����          �? �? �? �?      
   transform                    !         "         #         $         %   !           �?  @(  @�  �41�&��5ݘ>��o?��?��?��?���>  �?  @(  @�  �41�&��5ݘ>��o?��?��?��?���>  �?  @(  @�  �43('����6
�>�ep?��?��?��?���>  �?  @(  @�  �4�(����bA�>I�q?��?��?��?��?  �?  @(  @�  �4�W)��g��Z��>|�s?��?��?��?��?  �?  @(  @�  �4��*��Fb��b\>��u?��?��?��?��L?  �?  @(  @�  �4�/��j�?�d=V�{?��?��?��?  �?  �?  @(  @�  �4�5.��w�<F]�l�z?��?��?��?���?  �?  @(  @�  �4�3-�F�=��y?��?��?��?�?  �?  @(  @�  �4u9,��1@=
1;�Z�w?��?��?��?���?  �?  @(  @�  �4g+��T=�oO�̣v?��?��?��?$"�?  �?  @(  @�  �4�$+�L_^=��X��!v?��?��?��?���?  �?  @(  @�  �4J+�O�_=#�Y�~v?��?��?��?��@  �?  @(  @�  �4��*�wH_=��Y��v?��?��?��?��@  �?  @(  @�  �4�<$��Y=o3Z�4Zv?��?��?��?@  �?  @(  @�  �4�^�Y�J=H[��w?��?��?��?WU@  �?  @(  @�  �4����3=U\���w?��?��?��?#""@  �?  @(  @�  �4�vԼ]۽<J�_���y?��?��?��?gf&@  �?  @(  @�  �4�}����<J`�_�y?��?��?��?��*@  �?  @(  @�  �4R��;��<oL`�o�y?��?��?��?��.@  �?  @(  @�  �4U<J~<�G_�I�y?��?��?��?333@  �?  @(  @�  �4�<��<�{W��8z?��?��?��?ww7@  �?  @(  @�  �4He�;���<�>F�){?��?��?��?��;@  �?  @(  @�  �4�S;���<�j+��M|?��?��?��?��?@  �?  @(  @�  �49�e�i3=����}?��?��?��?��L@  �?  @(  @�  �4���q=<�~<Cy?��?��?��?��Y@  �?  @(  @�  �4��.��=�#2>�z?��?��?��?��]@  �?  @(  @�  �4AbM�2�=�%]>�xx?��?��?��?"b@  �?  @(  @�  �4��i�Z��=�>)v?��?��?��?cff@  �?  @(  @�  �4�;��P��=�F�>6<t?��?��?��?��j@  �?  @(  @�  �4�w���$�=�z�>��r?��?��?��?��n@  �?  @(  @�  �4n���MI�=�>�1r?��?��?��?/3s@  �?  @(  @�  �4�U���.�=PM�>�r?��?��?��?sww@  �?  @(  @�  �4����Ei�=o��>��q?��?��?��?��{@  �?  @(  @�  �4�˻����=��>��q?��?��?��?��@  �?  @(  @�  �4�vȽҭ�=&��>a�q?��?��?��? "�@  �?  @(  @�  �4Ȫսb��=70�>��q?��?��?��?df�@  �?  @(  @�  �4k��3�e=���>��q?��?��?��?�̌@  �?  @(  @�  �4�����<���>��q?��?��?��?RU�@  �?  @(  @�  �4i���MD��P�>�p?��?��?��?tw�@  �?  @(  @�  �4��!�a�m�j,�>�rp?��?��?��?���@  �?  @(  @�  �4 $�W�����>�;p?��?��?��?���@  �?  @(  @�  �4�%�a����>mp?��?��?��?�ݝ@  �?  @(  @�  �4�&��b���>'�o?��?��?��?  �@  �?  @(  @�  �41�&��5ݘ>��o?��?��?��?&      
   transform '                  (         )         *         +         ,   !            �?  �3  @�  �� �� �  ��  �?��?��?��?  �@  �?  �3  @�  �� �� �  ��  �?��?��?��?-      
   transform .                  /         0         1         2         3   !            �?  ��   �  ��  � �0 ��  �?��?��?��?  �@  �?  ��   �  ��  � �0 ��  �?��?��?��?4      
   transform 5                  6         7         8         9         :   !   ,        �?  ��  ��  �3 �'  � @�  �?��?��?��?���=  �?  ��  ��  �3���&��2�:��?��?��?��?��>  �?  ��  ��  �3j���0���g�;��?��?��?��?��L>  �?  ��  ��  �3�;�(;���<��?��?��?��?���>  �?  ��  ��  �3A�㻦P�����<��?��?��?��?���>  �?  ��  ��  �3��1���ڼ8[�<��?��?��?��?��?  �?  ��  ��  �33���ȇ=S�~?��?��?��?��n?  �?  ��  ��  �3�ʡ�DXG��@>5�u?��?��?��?���?  �?  ��  ��  �3����(����>��c?��?��?��?HD�?  �?  ��  ��  �3�T�\K���$�>34\?��?��?��?���?  �?  ��  ��  �3���%���QY�>�MZ?��?��?��?ZU�?  �?  ��  ��  �3]��>��~��>��X?��?��?��?���?  �?  ��  ��  �3���r��S�>��W?��?��?��?lf�?  �?  ��  ��  �3���񿾂d�>��V?��?��?��?���?  �?  ��  ��  �3�=� �����>*�V?��?��?��?~w�?  �?  ��  ��  �3(��f��	ֹ>��V?��?��?��?  @  �?  ��  ��  �3���Q����k�>\�V?��?��?��?GD@  �?  ��  ��  �3G*��-�����>�UW?  �?��?��?��@  �?  ��  ��  �3�D�����>�W?��?��?��?��@  �?  ��  ��  �3}�ҟ��D0�>��X?��?��?��?WU@  �?  ��  ��  �3�������ld�>�HZ?��?��?��?��L@  �?  ��  ��  �3�ʽȞy�qq>��o?��?��?��?/3s@  �?  ��  ��  �3iL��j�����=��{?��?��?��?�ݝ@  �?  ��  ��  �3+/��׹�:�9��?��?��?��?  �@  �?  ��  ��  �3 �'  � @�  �?��?��?��?
   Animation ,            jump         �>      
   transform                                                     !            �?�r����> ��:              �?�P�>�P�>�P�>  �>  �?�r����> ��:              �?�P�>�P�>�P�>      
   transform                                                          !            �? ���f+�� ����          �? �? �? �?  �>  �? ���f+�� ����          �? �? �? �?      
   transform                    !         "         #         $         %   !            �?  @(  @�  �4  2 �' l(  �?��?��?��?  �>  �?  @(  @�  �4  2 �' l(  �?��?��?��?&      
   transform '                  (         )         *         +         ,   !   <         �?  �3  @�  �� �� �  ��  �?��?��?��?���=  �?  �3  @�  ��U��<��L=J�<k�?��?��?��?��>  �?  �3  @�  ��fE�=�J'>��<cp{?��?��?��?��L>  �?  �3  @�  ��>N��>)�D=��s?��?��?��?  �>  �?  �3  @�  ��S!>�u�>��X=�"q?��?��?��?-      
   transform .                  /         0         1         2         3   !   <         �?  ��   �  ��  � �0 ��  �?��?��?��?���=  �?  ��   �  ����<T(\�d��	�?  �?��?��?��>  �?  ��   �  �����=j�3�
Y���{?��?��?��?��L>  �?  ��   �  ���>Z���7�I�"�r?��?��?��?  �>  �?  ��   �  ��>3w��f�^�r�o?��?��?��?4      
   transform 5                  6         7         8         9         :   !   <         �?  ��  ��  �3 �'  � @�  �?��?��?��?���=  �?  ��  ��  �3owȽ�N=�A�@F~?��?��?��?��>  �?  ��  ��  �3:(���>+>.���vWl?��?��?��?��L>  �?  ��  ��  �3%G�zD�>X�@�:KL?��?��?��?  �>  �?  ��  ��  �3a�ݵ�>�Q�k�A?��?��?��?
   Animation ,            walk          ?      
   transform                                                     !            �?�r����> ��:              �?�P�>�P�>�P�>   ?  �?�r����> ��:              �?�P�>�P�>�P�>      
   transform                                                          !   �         �? ��a2,��M3����          �? �? �? �?���=  �? ���޻-0����3          �? �? �? �?��>  �? ���e���������3          �? �? �? �?��L>  �? ��h���
����3          �? �? �? �?���>  �? ��q=��P����3          �? �? �? �?���>  �? ��yb������          �? �? �? �?���>  �? ���B�3�J����3          �? �? �? �?���>  �? ��~��
����3          �? �? �? �?��?  �? ����G�����3          �? �? �? �?��?  �? ��a2,��M3����          �? �? �? �?   ?  �? ��a2,��M3����          �? �? �? �?      
   transform                    !         "         #         $         %   !   x         �?  @(  @�  �4���2�����i�=\`?��?��?��?���=  �?  �(  ��   53��2jY���SU=�?��?��?��?��L>  �?  @(  @�   5l�2DbJ;�}���?��?��?��?���>  �?  @(  @�  �4��1O�;����7q?��?��?��?���>  �?  @(  @�   5�*2Pc�;Q����{?��?��?��?���>  �?  �(  ��   5y/2�5;�����?��?��?��?���>  �?   (   �  �4o�91,;㺕�<>�?��?��?��?��?  �?  �(  ��   5+?�2㵚���s=�?��?��?��?��?  �?  @(  @�  �4���2�����i�=\`?��?��?��?   ?  �?  @(  @�  �4���2�����i�=\`?��?��?��?&      
   transform '                  (         )         *         +         ,   !   �         �?  �3  @�  ����þ�}�7�+�^�l?��?��?��?���=  �?  �3  @�  ��.&����O7#P�j�t?��?��?��?��>  �?  �3  @�  ��F-k���J68���ӓ?��?��?��?��L>  �?  �3  @�  ��O f>�=����;�ry?��?��?��?���>  �?  �3  @�  ��0��>�e���<�`n?��?��?��?���>  �?  �3  @�  ���h�>֍]��/<C�o?��?��?��?���>  �?  �3  @�  ���\$>�P��:�};ǭ|?��?��?��?���>  �?  �3  @�  ���2�i��6��J���}?��?��?��?��?  �?  �3  @�  �������3i7���Wq?��?��?��?��?  �?  �3  @�  ����þ�}�7�+�^�l?��?��?��?   ?  �?  �3  @�  ����þ�}�7�+�^�l?��?��?��?-      
   transform .                  /         0         1         2         3   !   �         �?  ��   �  ����>�6��}�^�l?��?��?��?���=  �?  ��   �  �����>�]i��Ȼs�t?��?��?��?��>  �?  ��   �  @���j=%�5����ԓ?��?��?��?��L>  �?  ��   �  ����e���1<�ؘ;�ry?��?��?��?���>  �?  ��   �  ���j����<���;�`n?��?��?��?���>  �?  ��   �  ��]6��+G�<Ģ�;D�o?��?��?��?���>  �?  ��   �  @��.$�-��;�YZ;ɭ|?��?��?��?���>  �?  ��   �  ��>��ʻ�1.���}?��?��?��?��?  �?  ��   �  ��ǉ�>�˃����Wq?��?��?��?��?  �?  ��   �  ����>�6��}�^�l?��?��?��?   ?  �?  ��   �  ����>�6��}�^�l?��?��?��?4      
   transform 5                  6         7         8         9         :   !   �         �?  ��  ��  �3�ބ=4_�=c��~?��?��?��?���=  �?  ��  ��  �3r��<�=iD����?��?��?��?��>  �?  ��  ��  �3>��D��*�k=��}?��?��?��?��L>  �?  ��  ��  �3c�2�0m��>�r?��?��?��?���>  �?  ��  ��   4�Qj������8H>�ig?��?��?��?���>  �?  ��  ��   4�[e��9����C>h?��?��?��?���>  �?  ��  ��  �3���2L�[>F�u?��?��?��?���>  �?  ��  ��  �3<�#���Y�9=H?��?��?��?��?  �?  ��  ��   4H92=l�l=NJ��&?��?��?��?��?  �?  ��  ��  �3�ބ=4_�=c��~?��?��?��?   ?  �?  ��  ��  �3�ބ=4_�=c��~?��?��?��?   PackedScene    ;      	         names "   '      Scene Root    Spatial 	   Armature 
   transform 	   Skeleton    bones_in_world_transform    bones/0/name    bones/0/parent    bones/0/rest    bones/0/enabled    bones/0/bound_children    bones/1/name    bones/1/parent    bones/1/rest    bones/1/enabled    bones/1/bound_children    bones/2/name    bones/2/parent    bones/2/rest    bones/2/enabled    bones/2/bound_children    bones/3/name    bones/3/parent    bones/3/rest    bones/3/enabled    bones/3/bound_children    bones/4/name    bones/4/parent    bones/4/rest    bones/4/enabled    bones/4/bound_children    Cone    mesh    material/0    MeshInstance    AnimationPlayer    anims/idle    anims/jump    anims/walk    	   variants          �P�>            �P�>            �P�>�r����> ��:            body    ����   ��?       �    �iu�@��   �@�?�iu�  �0   �  ��             head            �?  �4��&�}��}?(�>(�3)���}?    �L�1��ο      leg.l    ��`8J�ż&�:ϊ?�Vu�z �<ku�Hw�]�>�>B?>      leg.r    ���
�E=��<l@=�<?2Z{�ˮ��.w�bv���ƾ��>\C0>      tail    �.X?��޾h�>ī`��z?��[?'e�� >�0&�>������پ# >                                                 node_count             nodes     c   ��������       ����                      ����                           ����                           	      
                                       	            
                                                                                      "      ����          !                  #   #   ����   $      %      &                conn_count              conns               node_paths              editable_instances              version       RSRC[remap]

importer="scene"
type="PackedScene"
path="res://.import/polycat.dae-15402bf986e08e1f5a694bbdd780a257.scn"

[deps]

source_file="res://polycat.dae"
dest_files=[ "res://.import/polycat.dae-15402bf986e08e1f5a694bbdd780a257.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
      [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         3DPlataformerin8Min    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     input/move_forwardsd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            input/move_backwardsd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            input/move_leftd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            input/move_rightd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         
   input/jumpd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         )   rendering/environment/default_environment          res://default_env.tres                 GDPC