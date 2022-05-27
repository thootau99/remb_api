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

    stage('scream') {
      steps {
        sh 'echo "AAAAAAAAAAAAAAAAAAAAAAAA"'
      }
    }

  }
}