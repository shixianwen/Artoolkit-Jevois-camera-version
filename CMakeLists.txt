######################################################################################################################
#
# JeVois Smart Embedded Machine Vision Toolkit - Copyright (C) 2016 by Laurent Itti, the University of Southern
# California (USC), and iLab at USC. See http://iLab.usc.edu and http://jevois.org for information about this project.
#
# This file is part of the JeVois Smart Embedded Machine Vision Toolkit.  This program is free software; you can
# redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software
# Foundation, version 2.  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
# License for more details.  You should have received a copy of the GNU General Public License along with this program;
# if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# Contact information: Laurent Itti - 3641 Watt Way, HNB-07A - Los Angeles, BA 90089-2520 - USA.
# Tel: +1 213 740 3527 - itti@pollux.usc.edu - http://iLab.usc.edu - http://jevois.org
######################################################################################################################

# CMake build rules for JeVois Base library and executables

# You may provide the installed JeVois config root as:
#   cmake -DJEVOIS_CONFIG=/jevois/config ..

cmake_minimum_required(VERSION 3.1)

# Set vendor names, our modules will be placed in a directory by that name under /jevois/modules:
set(JEVOIS_VENDOR "shixian")
set(JEVOIS_CONFIG "/jevois/config" CACHE STRING "Path to JeVois config to use")

# Include helper functions, config, etc from the JeVois install:
set(CMAKE_MODULE_PATH ${JEVOIS_CONFIG})
include(jevois_config)
include(JeVois)

# Set project name, detects compiler (which has been set by our helper module). Then set some complation flags:
project(demoartoolkit)
jevois_project_set_flags()
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# Setup our modules that are in src/Modules. First arg: source directory for modules; 2nd arg: target dependencies,
# usually empty for a single module. See the CMakeLists.txt in jevoisbase for an example where we first build a shared
# library for all shared components, and then each module gets this library as a target dependency:
jevois_setup_modules(src/Modules "")
target_sources(DemoARtoolkit PRIVATE src/Components/ARtoolkit.C src/Components/ARMarkerSquare.c)



# run the configure, enable V4L2 and select as default, disable all others

# we compile this: find Contrib -name *.c | grep -v VideoLinuxV4L|grep -v 1394|grep -v Eden|grep -v Gl|grep -v examples|grep -v GStrea|grep -v calib|grep -v util|xargs



target_sources(DemoARtoolkit PRIVATE Contrib/ARToolKit5arm/lib/SRC/VideoImage/videoImage.c Contrib/ARToolKit5arm/lib/SRC/KPM/FreakMatcher/unsupported/test/mpreal/dlmalloc.c Contrib/ARToolKit5arm/lib/SRC/KPM/kpmFopen.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpCalibStereo.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpCore.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpUtil.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpStereoHandle.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpPointRobust.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpHandle.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpStereoPoint.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpPoint.c Contrib/ARToolKit5arm/lib/SRC/ARICP/icpStereoPointRobust.c Contrib/ARToolKit5arm/lib/SRC/AR2/tracking.c Contrib/ARToolKit5arm/lib/SRC/AR2/featureSet.c Contrib/ARToolKit5arm/lib/SRC/AR2/imageSet.c Contrib/ARToolKit5arm/lib/SRC/AR2/searchPoint.c Contrib/ARToolKit5arm/lib/SRC/AR2/marker.c Contrib/ARToolKit5arm/lib/SRC/AR2/handle.c Contrib/ARToolKit5arm/lib/SRC/AR2/matching2.c Contrib/ARToolKit5arm/lib/SRC/AR2/jpeg.c Contrib/ARToolKit5arm/lib/SRC/AR2/selectTemplate.c Contrib/ARToolKit5arm/lib/SRC/AR2/coord.c Contrib/ARToolKit5arm/lib/SRC/AR2/matching.c Contrib/ARToolKit5arm/lib/SRC/AR2/featureMap.c Contrib/ARToolKit5arm/lib/SRC/AR2/tracking2d.c Contrib/ARToolKit5arm/lib/SRC/AR2/surface.c Contrib/ARToolKit5arm/lib/SRC/AR2/template.c Contrib/ARToolKit5arm/lib/SRC/VideoDummy/videoDummy.c Contrib/ARToolKit5arm/lib/SRC/AR/paramDistortion.c Contrib/ARToolKit5arm/lib/SRC/AR/arCreateHandle.c Contrib/ARToolKit5arm/lib/SRC/AR/vHouse.c Contrib/ARToolKit5arm/lib/SRC/AR/arFilterTransMat.c Contrib/ARToolKit5arm/lib/SRC/AR/vTridiag.c Contrib/ARToolKit5arm/lib/SRC/AR/paramClear.c Contrib/ARToolKit5arm/lib/SRC/AR/arDetectMarker.c Contrib/ARToolKit5arm/lib/SRC/AR/arGetTransMat.c Contrib/ARToolKit5arm/lib/SRC/AR/arPattGetID.c Contrib/ARToolKit5arm/lib/SRC/AR/mDet.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabeling.c Contrib/ARToolKit5arm/lib/SRC/AR/ar3DCreateHandle.c Contrib/ARToolKit5arm/lib/SRC/AR/mFree.c Contrib/ARToolKit5arm/lib/SRC/AR/mTrans.c Contrib/ARToolKit5arm/lib/SRC/AR/arPattCreateHandle.c Contrib/ARToolKit5arm/lib/SRC/AR/mDup.c Contrib/ARToolKit5arm/lib/SRC/AR/arPattSave.c Contrib/ARToolKit5arm/lib/SRC/AR/ar3DUtil.c Contrib/ARToolKit5arm/lib/SRC/AR/arGetTransMatStereo.c Contrib/ARToolKit5arm/lib/SRC/AR/vDisp.c Contrib/ARToolKit5arm/lib/SRC/AR/paramFile.c Contrib/ARToolKit5arm/lib/SRC/AR/mInv.c Contrib/ARToolKit5arm/lib/SRC/AR/vFree.c Contrib/ARToolKit5arm/lib/SRC/AR/mAllocMul.c Contrib/ARToolKit5arm/lib/SRC/AR/arPattAttach.c Contrib/ARToolKit5arm/lib/SRC/AR/paramGetPerspective.c Contrib/ARToolKit5arm/lib/SRC/AR/arImageProc.c Contrib/ARToolKit5arm/lib/SRC/AR/arPattLoad.c Contrib/ARToolKit5arm/lib/SRC/AR/arDetectMarker2.c Contrib/ARToolKit5arm/lib/SRC/AR/mPCA.c Contrib/ARToolKit5arm/lib/SRC/AR/mAlloc.c Contrib/ARToolKit5arm/lib/SRC/AR/mAllocTrans.c Contrib/ARToolKit5arm/lib/SRC/AR/paramDisp.c Contrib/ARToolKit5arm/lib/SRC/AR/vAlloc.c Contrib/ARToolKit5arm/lib/SRC/AR/paramChangeSize.c Contrib/ARToolKit5arm/lib/SRC/AR/mAllocDup.c Contrib/ARToolKit5arm/lib/SRC/AR/arGetLine.c Contrib/ARToolKit5arm/lib/SRC/AR/mAllocInv.c Contrib/ARToolKit5arm/lib/SRC/AR/mAllocUnit.c Contrib/ARToolKit5arm/lib/SRC/AR/mUnit.c Contrib/ARToolKit5arm/lib/SRC/AR/mDisp.c Contrib/ARToolKit5arm/lib/SRC/AR/paramLT.c Contrib/ARToolKit5arm/lib/SRC/AR/mMul.c Contrib/ARToolKit5arm/lib/SRC/AR/mSelfInv.c Contrib/ARToolKit5arm/lib/SRC/AR/vInnerP.c Contrib/ARToolKit5arm/lib/SRC/AR/arGetMarkerInfo.c Contrib/ARToolKit5arm/lib/SRC/AR/paramDecomp.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBI3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWIYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBI3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBR3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWI3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBICY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWRCY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWI3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWI3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBR3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBR3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBRA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBRC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBR3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBICY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWRC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBR3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWRYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWI3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWRC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBRA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBI3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWIYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWI3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWR3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWR3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBI3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWR3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBR3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWR3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWR3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBZ.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBI3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBI3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBZ.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBIC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWI3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWR3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBIC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWI3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBRCY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBR3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWIC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBR3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWIA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBI3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBRYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWI3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBIA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBIYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBRC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBI3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWZ.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWR3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBR3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWRCY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBI3CA5551.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWRA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWRA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWRYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWR3C565.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWICY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBI3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWIC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWR3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWICY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWR3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBIYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDWZ.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBIA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubDBRCY.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWI3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWI3CA4444.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBR3CA.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEWIA3C.c Contrib/ARToolKit5arm/lib/SRC/AR/arLabelingSub/arLabelingSubEBRYC.c Contrib/ARToolKit5arm/lib/SRC/AR/arUtil.c Contrib/ARToolKit5arm/lib/SRC/ARMulti/arMultiReadConfigFile.c Contrib/ARToolKit5arm/lib/SRC/ARMulti/arMultiGetTransMat.c Contrib/ARToolKit5arm/lib/SRC/ARMulti/arMultiGetTransMatStereo.c Contrib/ARToolKit5arm/lib/SRC/ARMulti/arMultiFreeConfig.c Contrib/ARToolKit5arm/lib/SRC/Video/video2.c Contrib/ARToolKit5arm/lib/SRC/Video/videoAspectRatio.c Contrib/ARToolKit5arm/lib/SRC/Video/video.c Contrib/ARToolKit5arm/lib/SRC/Video/videoSaveImage.c Contrib/ARToolKit5arm/lib/SRC/Util/profile.c Contrib/ARToolKit5arm/lib/SRC/Util/thread_sub.c Contrib/ARToolKit5arm/lib/SRC/ARWrapper/trackingSub.c)






  
############################################################################################
#ARtoolkit library
include_directories(src/Components)
include_directories(Contrib)
include_directories(Contrib/ARToolKit5arm/include)
#other hearder directory
include_directories(/usr/local/include)

#find_library(ARTOOLKIT_LIBRARY NAMES ARvideo AR ARICP AR m pthread jpeg pthread gobject-2.0 gmodule-2.0 gthread-2.0 xml2 glib-2.0 opencv_shape opencv_stitching opencv_objdetect opencv_superres opencv_videostab opencv_calib3d opencv_features2d opencv_highgui opencv_videoio opencv_imgcodecs opencv_video opencv_photo opencv_ml opencv_imgproc opencv_flann opencv_core )



# Add any link libraries for each module:
#-lARgsub -lARvideo -lAR -lARICP -lAR -lglut -lGLU -lGL -lX11 -lm -lpthread -ljpeg -pthread -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lxml2 -lglib-2.0 -ldc1394 -lraw1394 -lopencv_shape -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core

#target_link_libraries(DemoARtoolkit ${ARTOOLKIT_LIBRARY})
#target_link_libraries(DemoARtoolkit m pthread jpeg pthread gobject-2.0 gmodule-2.0 gthread-2.0 glib-2.0 opencv_shape opencv_stitching opencv_objdetect opencv_superres opencv_videostab opencv_calib3d opencv_features2d opencv_highgui opencv_videoio opencv_imgcodecs opencv_video opencv_photo opencv_ml opencv_imgproc opencv_flann opencv_core)

target_link_libraries(DemoARtoolkit ${JEVOIS_OPENCV_LIBS} opencv_calib3d opencv_imgproc opencv_core)
#target_link_libraries(DemoARtoolkit opencv_shape opencv_stitching opencv_objdetect opencv_superres opencv_videostab opencv_calib3d opencv_features2d opencv_highgui opencv_videoio opencv_imgcodecs opencv_video opencv_photo opencv_ml opencv_imgproc opencv_flann opencv_core)
# Wrapping up:
jevois_project_finalize()  # call this last in your CMakeLists.txt, will un-mount the live microSD if applicable
