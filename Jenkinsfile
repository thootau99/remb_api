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

    stage('deploy') {
      agent any
      steps {
        sh 'cd ~/production'
        sh 'docker pull'
        sh 'docker-compose down && docker-compose up -d'
      }
    }

  }
}