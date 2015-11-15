 #
 # Copyright (c) 2015, Levin Calado <levincalado@gmail.com>
 #
 # This software is licensed under the terms of the GNU General Public
 # License version 2, as published by the Free Software Foundation, and
 # may be copied, distributed, and modified under those terms.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
 # Please maintain this if you use this script or any part of it
 #

WORKING_DIR=$PWD
OUTPUT_DIR=$WORKING_DIR/output
TEMP_PACKAGE=temp.zip
OUTPUT_PACKAGE=cody_kernel-sprout_output.zip
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
nocol='\033[0m'

echo -e "$blue***********************************************"
echo "          AnyKernel2 for Sprout          "
echo -e "***********************************************$nocol"

echo -e "$cyan Started Packing Resources...$nocol"

zip -r9 $TEMP_PACKAGE * -x@exclude.lst

echo -e "$yellow Packing temp.zip Success...$nocol"

echo -e "$yellow Creating $OUTPUT_PACKAGE...$nocol"

mv $TEMP_PACKAGE $OUTPUT_DIR/$OUTPUT_PACKAGE

echo -e "$cyan Finished...$nocol"
