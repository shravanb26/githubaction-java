pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/CharanReddy129/Java_maven_Project.git'
            }
        }
        stage('creating artifact') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('docker build and push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: '2de7d617-48b4-493e-873c-5d22df5e0709') {
                         //add docker hub login and password and create the Credentials and give name in place of "2de7d617-48b4-493e-873c-5d22df5e0709"
                        sh "docker build -t charanreddy12/webapp:latest ."
                        sh "docker push charanreddy12/webapp:latest"
                    }
                }
            }
        }
    }
}
