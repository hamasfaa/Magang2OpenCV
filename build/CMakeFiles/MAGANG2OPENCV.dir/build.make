# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hamasfa/Desktop/Magang2OpenCV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hamasfa/Desktop/Magang2OpenCV/build

# Include any dependencies generated for this target.
include CMakeFiles/MAGANG2OPENCV.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MAGANG2OPENCV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MAGANG2OPENCV.dir/flags.make

CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o: CMakeFiles/MAGANG2OPENCV.dir/flags.make
CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o: ../Tugas1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamasfa/Desktop/Magang2OpenCV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o -c /home/hamasfa/Desktop/Magang2OpenCV/Tugas1.cpp

CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamasfa/Desktop/Magang2OpenCV/Tugas1.cpp > CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.i

CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamasfa/Desktop/Magang2OpenCV/Tugas1.cpp -o CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.s

# Object files for target MAGANG2OPENCV
MAGANG2OPENCV_OBJECTS = \
"CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o"

# External object files for target MAGANG2OPENCV
MAGANG2OPENCV_EXTERNAL_OBJECTS =

MAGANG2OPENCV: CMakeFiles/MAGANG2OPENCV.dir/Tugas1.cpp.o
MAGANG2OPENCV: CMakeFiles/MAGANG2OPENCV.dir/build.make
MAGANG2OPENCV: /usr/local/lib/libopencv_gapi.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_stitching.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_aruco.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_bgsegm.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_bioinspired.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_ccalib.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_dnn_objdetect.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_dnn_superres.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_dpm.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_face.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_freetype.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_fuzzy.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_hfs.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_img_hash.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_intensity_transform.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_line_descriptor.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_mcc.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_quality.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_rapid.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_reg.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_rgbd.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_saliency.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_signal.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_stereo.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_structured_light.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_superres.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_surface_matching.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_tracking.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_videostab.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_wechat_qrcode.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_xfeatures2d.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_xobjdetect.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_xphoto.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_shape.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_highgui.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_datasets.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_plot.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_text.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_ml.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_phase_unwrapping.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_optflow.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_ximgproc.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_video.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_videoio.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_imgcodecs.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_objdetect.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_calib3d.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_dnn.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_features2d.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_flann.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_photo.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_imgproc.so.4.9.0
MAGANG2OPENCV: /usr/local/lib/libopencv_core.so.4.9.0
MAGANG2OPENCV: CMakeFiles/MAGANG2OPENCV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hamasfa/Desktop/Magang2OpenCV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MAGANG2OPENCV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MAGANG2OPENCV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MAGANG2OPENCV.dir/build: MAGANG2OPENCV

.PHONY : CMakeFiles/MAGANG2OPENCV.dir/build

CMakeFiles/MAGANG2OPENCV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MAGANG2OPENCV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MAGANG2OPENCV.dir/clean

CMakeFiles/MAGANG2OPENCV.dir/depend:
	cd /home/hamasfa/Desktop/Magang2OpenCV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hamasfa/Desktop/Magang2OpenCV /home/hamasfa/Desktop/Magang2OpenCV /home/hamasfa/Desktop/Magang2OpenCV/build /home/hamasfa/Desktop/Magang2OpenCV/build /home/hamasfa/Desktop/Magang2OpenCV/build/CMakeFiles/MAGANG2OPENCV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MAGANG2OPENCV.dir/depend

