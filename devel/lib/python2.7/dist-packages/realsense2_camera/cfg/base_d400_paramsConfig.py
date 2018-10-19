## *********************************************************
##
## File autogenerated for the realsense2_camera package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 292, 'description': 'Gain', 'max': 248, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_gain', 'edit_method': '', 'default': 16, 'level': 1, 'min': 16, 'type': 'int'}, {'srcline': 292, 'description': 'Enable Auto Exposure', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_enable_auto_exposure', 'edit_method': '', 'default': True, 'level': 2, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'D400 Visual Presets', 'max': 5, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_visual_preset', 'edit_method': "{'enum_description': 'D400 Visual Presets', 'enum': [{'srcline': 10, 'description': 'Custom', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Custom'}, {'srcline': 11, 'description': 'Default Preset', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Default'}, {'srcline': 12, 'description': 'Hand Gesture', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Hand'}, {'srcline': 13, 'description': 'High Accuracy', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'HighAccuracy'}, {'srcline': 14, 'description': 'High Density', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'HighDensity'}, {'srcline': 15, 'description': 'Medium Density', 'srcfile': '/home/fypbois/FYP_ws/src/realsense-2.0.3/realsense2_camera/cfg/base_d400_params.py', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'MediumDensity'}]}", 'default': 0, 'level': 3, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Frames Queue Size', 'max': 32, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_frames_queue_size', 'edit_method': '', 'default': 16, 'level': 4, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Error Polling Enabled', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_error_polling_enabled', 'edit_method': '', 'default': False, 'level': 5, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Output Trigger Enabled', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_output_trigger_enabled', 'edit_method': '', 'default': False, 'level': 6, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Depth Units', 'max': 0.001, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_depth_units', 'edit_method': '', 'default': 0.001, 'level': 7, 'min': 0.001, 'type': 'double'}, {'srcline': 292, 'description': 'JSON_file_path', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_JSON_file_path', 'edit_method': '', 'default': '', 'level': 8, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

base_d400_params_Custom = 0
base_d400_params_Default = 1
base_d400_params_Hand = 2
base_d400_params_HighAccuracy = 3
base_d400_params_HighDensity = 4
base_d400_params_MediumDensity = 5
