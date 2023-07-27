pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-webapp:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker stop webapp-container || true' // Stop the existing container if it's running
                sh 'docker rm webapp-container || true'   // Remove the existing container if it exists
                sh 'docker run -d -p 8081:80 --name webapp-container my-webapp:latest'
            }
        }
    }
}

