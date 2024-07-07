pipeline{
    agent any
    stages{
        stage("Git Checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Raviteja3399/to-do-app.git']])
            }
        }
        stage("Execute Docker File"){
            steps{
                script{
                    sh 'docker build -t to-do-app-image .'
                }
            }
        }
    }
}