pipeline {
    agent {
        docker { 
            image 'maven:3.8.6-eclipse-temurin-17-alpine' 
            }
        }
    stages {
        stage('build') {
            steps {
                echo " Die BuildID lautet: '$BUILD_ID'  Jobname ist: '$JOB_NAME'  Build mit der Nummer '$BUILD_NUMBER' wird gebaut "
                sh 'mvn package'
            }
        }
        stage('test') {
            steps {
                sh '''
                mvn test
                docker build . -t maven-demo:01
                '''
            }
        }
        /*stage('dockerfile') {
            steps {
                sh '''
                
                docker run maven-demo:01
                '''
            }
        }*/
    }
}