pipeline{
    agent any
    stages{
        stage('checkout'){
            steps{
                git 'https://github.com/vijithchin/task.git'
            }
        }
        stage('Build'){
            steps{
                sh 'docker build -t task1:v1 .'
            }
        }
        
        stage('Run'){
            steps{
                sh 'docker run -d -p 8081:80 --name roadrunner task1:v1'
            }
        }
    }
    post{
        success{
            emailext(
                to:'vijithchin@gmail.com',
                subject:'Success',
                body:"Success Email $GIT_URL"
                )
        }
        failure{
            emailext(
                to:'vijithchin@gmail.com',
                subject:'Failure',
                body:"Failure Email $GIT_URL"
                )
        }
    }
}
