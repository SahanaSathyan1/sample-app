pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/SahanaSathyan1/sample-app.git'
            }
        }

        stage('Check Docker Version') {
            steps {
                sh 'docker --version'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t sample-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f sample-app || true
                    docker run -d -p 8081:80 --name sample-app sample-app
                '''
            }
        }
    }
}

