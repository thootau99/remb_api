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
        sh 'node --version'
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
        withCredentials(bindings: [sshUserPrivateKey(credentialsId: 'SSHHOST', keyFileVariable: 'key')]) {
          sh 'ssh -i ${key} -oStrictHostKeyChecking=no thootau@192.168.76.252 "cd ~/remb_production;docker-compose pull;docker-compose down;docker-compose up -d"'
        }

      }
    }

  }
}