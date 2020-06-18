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
        stage('do the thing') {
            steps {
                echo '${params.MESSAGE}'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
