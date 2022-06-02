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
        withCredentials([sshUserPrivateKey(credentialsId: 'SSHHOST', keyFileVariable: 'key')]) {
          // some block
          sh 'ssh -i ${key} -oStrictHostKeyChecking=no thootau@192.168.76.252 \'cd ~/remb_production\' && docker pull '
        }
      }
    }

  }
}
