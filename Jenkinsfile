pipeline {
  agent {
    label "worker-01"
  }
  /* environment {} */
  stages {
    stage('Clean') {
      steps{
        sh 'docker stop $(docker ps -aq)'
        sh 'docker rm node-app -f || true'
        sh 'docker rmi node-app -f || true'
      }
    }
    stage('Build') {
      steps{
        sh 'docker build -t node-app .'
      }
    }
    stage('Deploy') {
      steps{
        sh 'docker run -d -p 80:5000 --name node-app node-app'
      }
    }
    stage('Test') {
      steps{
        sh 'curl localhost'
      }
    }
  }
}