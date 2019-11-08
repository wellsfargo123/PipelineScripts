node{

Project_ID = "${Project_ID}"
Repo_Name = "${Repo_Name}"
filepath="${workspace}"
env.WORKSPACE = pwd()


stage("CheckOut Code")

{
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rajgopal2693/maven.git']]])
}
stage("JobCreation")
{


  echo pwd()
  sh "java -jar /var/lib/jenkins/ -s http://34.93.112.220:8080/ create-job POCJob1 < Property.xml"
}


}
