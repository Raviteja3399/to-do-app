pipeline{
    agent any
    stages{
        stage("Git Checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Raviteja3399/to-do-app.git']])
            }
        }
        stage("build image"){
            steps{
                script{
                    sh 'docker build -t to-do-app-image .'
                }
            }
        }
        stage("provision container"){
            steps{
                script{
                    sh 'docker run -d --name to-do-app to-do-app-image'
                }
            }
        }
    }
}