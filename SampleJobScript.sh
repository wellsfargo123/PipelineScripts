node{

Project_ID = "${Project_ID}"
Repo_Name = "${Repo_Name}"
filepath="${workspace}"
cleanWs()

stage("CheckOut Code")

{
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rajgopal2693/maven.git']]])
}
stage("Maven Build")
{
env.WORKSPACE = pwd()
sh "mvn clean install -Dmaven.test.skip=true -o &>> $filepath"

}
}
