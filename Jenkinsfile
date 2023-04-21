pipeline
{
    agent any
    tools
    {
        maven 'MAVEN_HOME'
    }
     
    stages
    {
     
      stage ('cloning from git')
      {
          steps
          {
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/manishkumar201/maven.git']])
          }
         
      }
      stage('building jar file')
      {
          steps
          {
              sh 'mvn clean install'
          }
      }
      stage( 'building docker image with dockerfile')
      {
          steps
          {
              sh 'sudo docker build -t officialmanishkr98/maven:latest .'
          }
      }
      
    }
}
