%%% Script to run some KITTI Velodyne sample data based on the% provided dev kit.%clear all;disp('Here.')addpath ('/Users/anthonydaniell/Desktop/FilesToSync/Research/Didi_Udacity_Car_Challenge/CodeBase_ddcar/devkit/matlab');base_dir  = '/Users/anthonydaniell/Desktop/FilesToSync/Research/Didi_Udacity_Car_Challenge/KITTI_Data/City_2011_09_26_drive_0001/2011_09_26/2011_09_26_drive_0001_sync';calib_dir = '/Users/anthonydaniell/Desktop/FilesToSync/Research/Didi_Udacity_Car_Challenge/KITTI_Data/City_2011_09_26_drive_0001/2011_09_26';warning ("off");trackletFile = [base_dir "/tracklet_labels.xml"]%xml_parse_util(trackletFile)testClass = xmlNode()struct(testClass)testClass.get("tagHeader")%% End of script%