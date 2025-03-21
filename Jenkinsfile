pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/PJK-Prahalath/devops-simple-web-app.git'
            }
        }
        stage('Build') {
            steps{
                sh 'mvn clean'
		sh 'mvn install'
            }
        }
        stage('build to images') {
            steps {
            script{
                sh "docker build -t prahalath99/webapplication1 ."
            }
            }
        }
        stage('docker push hub') {
            steps {
            script{
               withDockerRegistry(credentialsId: 'cred-3', url: 'https://index.docker.io/v1/') {
                sh 'docker push prahalath99/webapplication1'
            }
            }
            }
        }
    }
}
