pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/SahanaSathyan1/sample-app.git'

            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("sample-app")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f sample-app || true'
                    docker.image("sample-app").run("--name sample-app -d -p 8081:80")
                }
            }
        }
    }
}

