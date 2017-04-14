# Simple code to read in some training data and
# view images in sequence.
#
# Anthony L. Daniell
# April 12, 2017
#
import numpy as np
import cv2
from os import listdir
from os.path import isfile, join

#
# open a camera directory and load files (sorted by alpha).
#

mypath='/Users/anthonydaniell/Desktop/FilesToSync/Research/Didi_Udacity_Car_Challenge/Round1_output/data_1/20/camera'

onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
###print onlyfiles
#
# Load and display images
#
i=0
skip=20
for inFile in onlyfiles:
    if i % skip == 0:
        fullFile = mypath + '/' + inFile
        img = cv2.imread(fullFile,0)
        cv2.imshow('image',img)
        cv2.waitKey(0)
        cv2.destroyAllWindows()
    i+=1
#
# End of script
#
