node{

Project_ID = "${Project_ID}"
Repo_Name = "${Repo_Name}"
filepath="${workspace}"
env.WORKSPACE = pwd()



stage("JobCreation")
{


  echo pwd()
  sh "java -jar /var/lib/jenkins/jenkins-cli.jar -s http://34.93.112.220:8080/ create-job POCJob1 < Property.xml"
}


}
