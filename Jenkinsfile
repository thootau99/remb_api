pipeline {
  agent none
  stages {
    stage('test') {
      agent {
        docker {
          image 'node'
        }

      }
      steps {
        sh '''node --version
'''
      }
    }

    stage('build') {
      agent any
      steps {
        sh 'ls'
        sh 'docker --version'
        sh 'docker build -t docker:5000/rembapi .'
        sh ' docker push docker:5000/rembapi'
      }
    }

  }
}