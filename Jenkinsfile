pipeline {
    agent any
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
    }
}