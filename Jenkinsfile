pipeline {
    agent any /*{
        docker { 
            image 'maven:3.8.6-eclipse-temurin-17-alpine' 
            }
        }*/
        tools {
            maven 'Apache Maven 3.8.6'
            jdk 'Java'
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
                sh 'mvn test'
            }
        }
        stage('dockerfile') {
            steps {
                sh '''
                docker build . -t maven-demo:01
                docker run maven-demo:01
                '''
            }
        }
    }
}