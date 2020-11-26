#!/bin/sh
cd $(dirname $0)

helpFunction()
{
   echo ""
   echo "Usage: $0 -n buildTool"
   echo -e "\t-n Description of what is buildTool"
   exit 1
}

while getopts "n:b:c:" opt
do
   case "$opt" in
      n ) buildTool="$OPTARG" ;;
      ? ) helpFunction ;;
   esac
done

# Print helpFunction in case parameter is empty
if [ -z "$buildTool" ]
then
   echo "The parameter is empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$buildTool"

cd ../builders

shopt -s nocasematch
tool1="maven"
tool2="gradle"

if [[ $(fgrep -ix $tool1 <<< $buildTool) ]];
then
   ./mvnw clean install
   ret=$?
   if [ $ret -ne 0 ];
   then
      exit $ret
   fi
   rm -rf target
elif [[ $(fgrep -ix $tool2 <<< $buildTool) ]];
then
   ./gradlew clean build
   ret=$?
   if [ $ret -ne 0 ];
   then
	  exit $ret
   fi
   rm -rf build
else
   exit 1
fi

exit
