pipeline {
    agent any
        tools { 
      maven 'Apache Maven 3.8.6' 
      jdk 'Java' 
    }
    stages {
        stage('Hello') {
            steps {
                echo " Die BuildID lautet: '$BUILD_ID'  Jobname ist: '$JOB_NAME'  Build mit der Nummer '$BUILD_NUMBER' wird gebaut "
                sh '''
                mvn package
                cd target
                ls
                '''
            }
        }
        stage('Test') {
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