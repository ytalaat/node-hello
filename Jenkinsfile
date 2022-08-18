pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
              git branch: 'staging', credentialsId: 'github-credentials', url: 'https://github.com/s-tarek/node-hello'
            }
        }
        stage('Building image') {
          steps{
            script {
              sh "docker build -t node-hello:staging ."
            }
          }
        }
        stage('Deploy image') {
          steps{
            script {
              sh "docker run -p 7000:7000 node-hello:staging"
            }
          }
        }
    }

}