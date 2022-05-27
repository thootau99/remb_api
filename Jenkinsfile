pipeline {
  agent {
    docker {
      image 'node'
    }

  }
  stages {
    stage('test') {
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