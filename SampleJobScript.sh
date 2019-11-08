node{

Project_ID = ${Project_ID}
Repo_Name = ${Repo_Name}

stage("CheckOut Code")

{
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rajgopal2693/maven.git']]])
}

}