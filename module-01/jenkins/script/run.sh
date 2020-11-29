#!/bin/sh
cd $(dirname $0)

helpFunction()
{
   echo ""
   echo "Usage: $0 -n builder"
   echo -e "\t-n Description of what is builder"
   exit 1
}

while getopts "n:b:c:" opt
do
   case "$opt" in
      n ) builder="$OPTARG" ;;
      ? ) helpFunction ;;
   esac
done

# Print helpFunction in case parameter is empty
if [ -z "$builder" ]
then
   echo "The parameter is empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$builder"

cd ../builders

shopt -s nocasematch
tool1="maven"
tool2="gradle"

if [[ "$tool1" == "$builder" ]];
then
   ./mvnw clean install
   ret=$?
   if [ $ret -ne 0 ];
   then
      exit $ret
   fi
   rm -rf target
elif [[ "$tool2" == "$builder" ]];
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
