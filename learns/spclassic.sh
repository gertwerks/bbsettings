# If you switch between p4 and git based branches then add this at the top of your git sp scripts:
#source "$TOP_LEVEL/sourcecontrol.sh"
# and this at the top of your perforce based ones:
#source "$TOP_LEVEL/sourcecontrol.sh" p4
export CUR_LEARN_VERSION=classic
export BB_VINAME=BBLEARN_CLASSIC
export BBHOME=/usr/local/classic/blackboard
export CUR_LEARN_BRANCH=git
# export BBHOME_OVERRIDE=/usr/local/blackboard
# Uncomment the one for your OS and comment out the other one.
# (1/2) Other than Windows
export BB_DEVELOPER_CONFIG=/Users/jeggert/learn.util/users/jeggert/learnConfigs/spclassic.properties
# (2/2) Windows
#export BB_DEVELOPER_CONFIG=c:/cygwin64/home/$USER/learn.util/users/$USER/learnConfigs/learnConfigs/spgit.properties

# do not set BBHOME export BBHOME=/usr/local/$CUR_LEARN_VERSION/blackboard
# instead, set BBHOME_OVERRIDE if you do not use the standard pattern as above inside /usr/local
# BB is not required normally export BB=$BBHOME
export GRADLE_STAGE=$HOME/learn.util/users/jeggert/gradle

# Uncomment the one for your OS and comment out the other one.
# (1/2) Other than Windows
ln -sf $GRADLE_STAGE/gradle.classic.properties ~/.gradle/gradle.properties
# (2/2) Windows - Note that (1) Symlink doesn't seem to be followed to get the target file's content in Windows OS (2) the gradle properties file is looked upon in the Windows User's home directory.
#cp -f $GRADLE_STAGE/gradle.git.properties /cygdrive/c/Users/$USER/.gradle/gradle.properties

# If you are switching between installs it is useful to setup your PS1 shell prompt here to reflect your current environment
#export PS1='\s-\v git\$ '
