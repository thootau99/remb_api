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
        sh 'echo "AAAAAAAAAAAAAAAAAAAAAAAA"'
        sh 'docker --version'
      }
    }

  }
}