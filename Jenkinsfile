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
        sh 'docker --version'
      }
    }

    stage('scream') {
      steps {
        sh 'echo "AAAAAAAAAAAAAAAAAAAAAAAA"'
      }
    }

  }
}