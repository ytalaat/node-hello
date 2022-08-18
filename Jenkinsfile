pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
              git branch: 'test', credentialsId: 'github-credentials', url: 'https://github.com/s-tarek/node-hello'
            }
        }
        stage('Building image') {
          steps{
            script {
              sh "docker build -t node-hello:testing ."
            }
          }
        }
        stage('Deploy image') {
          steps{
            script {
              sh "docker run -p 9000:9000 node-hello:testing"
            }
          }
        }
    }

}