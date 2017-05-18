echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/umi/mt6755-common/patches/$dir/*.patch
	git apply $rootdirectory/device/umi/mt6755-common/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
