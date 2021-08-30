



#positional Parmeter
if [[ -z $1 ]]; then 
echo ""
echo "$1 was null"
echo ""
fi

#main function that hold everything
function main() {
    echo "what is your user name" && read userName
if [[ ${userName} != 'isaac' ]]; then
    echo 'That username is incorrect'
    exit
fi
    echo "What is your password" && read password
if [[ ${password} != '1234' ]]; then
    echo 'That password is incorrect'
    exit
else   
    echo "Authentication accepted welcome ${userName}, now let's get to that script"
fi


echo "Script is starting..."
mkdir newFile
cd newFile
touch textFile
var1=textFile
echo "hello" >> var1
mv textFile /Users/isaacmoss/Desktop/Projects/bashScript
cd ..
pwd 
mkdir TXT
var2=${1}
mv var1 /Users/isaacmoss/Desktop/Projects/bashScript/TXT
mv var2 /Users/isaacmoss/Desktop/Projects/bashScript/TXT
rm -r newFile
cd TXT
ls
pwd
echo "Script finished. If varibale 1 and varible 2 are in TXT folder you passed."
cd ..

}



case ${1} in
    main)
        main
        ;;
esac