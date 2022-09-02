@@ -9,23 +9,23 @@ pipeline {
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t darinpope/dp-alpine:latest .'
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
      sh 'docker logout'
      sh './jenkins/logout.sh'
    }
  }
}
