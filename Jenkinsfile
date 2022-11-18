pipeline {
    agent {
        docker {
            image "maven:3.8.6-openjdk-18"
        }
    }
        /* tools { 
      maven 'Apache Maven 3.8.6' 
      jdk 'Java' } */ 
    stages {
        stage('build') {
            steps {
                echo " Die BuildID lautet: '$BUILD_ID'  Jobname ist: '$JOB_NAME'  Build mit der Nummer '$BUILD_NUMBER' wird gebaut "
                sh '''
                mvn package
                cd target
                ls
                '''
            }
        }
        stage('test') {
            steps {
                sh '''
                ls
                cd target
                mvn test
                '''
            }
        }
    }
}