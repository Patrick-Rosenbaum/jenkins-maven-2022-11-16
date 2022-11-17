pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                echo 'Building..'
                sh 'mvn package'
                sh '''
                cd target
                dir
                '''

            }
        }
    }
}