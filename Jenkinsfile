pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t my-react-app .'
                sh 'docker run -p 3000:3000 my-react-app'
            }
        }
    }
}
