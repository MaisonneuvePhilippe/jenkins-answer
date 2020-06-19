pipeline {
    agent any
    parameters {
        string(name: 'MESSAGE', defaultValue: "Il n'y a aucun message")
    }
    stages {
        stage('Build') {
            steps {
                echo "${params.MESSAGE}"
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
