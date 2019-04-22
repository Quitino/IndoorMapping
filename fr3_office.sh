#
# Created by ichigoi7e on 17/07/2018.
#

#!/bin/bash

# Run test
./bin/rgbd_tum Vocabulary/ORBvoc.bin test/TUM1.yaml /home/fb/Dataset/self/my_data  /home/fb/Dataset/self/my_data/associations.txt

# Convert *.pcd to *.ot
./tools/pcd2octomap map.pcd map.ot

# Plot ATE image
python2 ./tools/evaluate_ate.py /home/fb/Datasets/TUM/freiburg3/rgbd_dataset_freiburg3_long_office_household/groundtruth.txt CameraTrajectory.txt --plot result2d.png  --plot3D --verbose

# Print all evaluation data
#python2  ./tools/evaluate_ate.py /home/fb/Datasets/TUM/freiburg3/rgbd_dataset_freiburg3_long_office_household/groundtruth.txt CameraTrajectory.txt --verbose



#evo_ape tum  /home/fb/Datasets/TUM/freiburg3/rgbd_dataset_freiburg3_long_office_household/groundtruth.txt CameraTrajectory.txt -va --plot --plot_mode xz --save_results results/ORB.zip








./bin/rgbd_tum Vocabulary/ORBvoc.bin test/TUM1.yaml ~/Dataset/TUM/HandheldSLAM/rgbd_dataset_freiburg1_360 ~/Dataset/TUM/associations/HandheldSLAM/fr1_360.txt

