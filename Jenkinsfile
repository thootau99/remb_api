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
        withCredentials([sshUserPrivateKey(credentialsId: '5214bded-fe22-4e4c-b79b-bf80f5dde08a', keyFileVariable: '')]) {
          // some block
          sh 'ssh     -oStrictHostKeyChecking=no thootau@192.168.76.252 \'cd ~/production\' '
        }
        sh 'ls ~/.ssh'
        sh 'ssh     -oStrictHostKeyChecking=no thootau@192.168.76.252 \'cd ~/production\' '
        sh 'docker pull'
        sh 'docker-compose down && docker-compose up -d'
      }
    }

  }
}
