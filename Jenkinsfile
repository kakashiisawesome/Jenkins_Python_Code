pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                // sh 'python -m nose --verbosity=2'
                sh 'nosetests verbosity=2'
            }
        }
    }
}