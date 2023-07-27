pipeline {
    agent {
        docker {
            image 'docker:20.10.8' // Use an image with Docker CLI installed
            args '-v /var/run/docker.sock:/var/run/docker.sock' // Mount Docker socket from host to Jenkins container
        }
    }
    
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
                sh 'docker run -d -p 80:80 --name webapp-container my-webapp:latest'
            }
        }
    }
}
