pipeline {
  agent { label 'linux' }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('aliponneth')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t aliponneth/app:latest .'
        sh './jenkins/build.sh'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        sh './jenkins/login.sh'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push aliponneth/app:latest'
        sh './jenkins/push.sh'
      }
    }
  }
  post {
    always {
      //sh 'docker logout'
      echo 'The pipeline completed'
    }
  }
}
