pipeline {
    agent any
    parameters {
        string(name: 'MESSAGE', defaultValue: 'No parameter')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Trying to build the oth scer pipeline'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
