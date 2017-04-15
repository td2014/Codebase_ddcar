#
# Simple code to examine contents of ROS bag file
#
import yaml
from rosbag.bag import Bag

inputPath='/tmp_host_share/Round1_Data/Didi-Release-2/Data/1/'
inputFile='2.bag'

inFile=inputPath+inputFile

info_dict = yaml.load(Bag(inFile,'r')._get_yaml_info())
print info_dict
#
# End of script
#
