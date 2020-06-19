pipeline {
    agent any
    parameters {
        string(name: 'MESSAGE', defaultValue: "Il n'y a aucun message")
    }
    stages {
        stage('Build') {
            steps {
                echo 'Trying to build the other pipeline'
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
