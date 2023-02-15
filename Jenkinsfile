pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        // Checkout code from GitHub
        checkout scm

        // Build the Docker image
        script {
          docker.build("my-react-app:${env.BUILD_NUMBER}")
        }
      }
    }
    stage('Deploy') {
      steps {
        // Deploy the Docker image to the remote host
        script {
          docker.withRegistry('https://registry.example.com', 'docker-credentials-id') {
            def image = docker.image("my-react-app:${env.BUILD_NUMBER}")
            image.push()
          }
        }
      }
    }
  }
}
