pipeline {
    agent any
    parameters {
        string(name: 'MESSAGE', defaultValue: "Il n'y a aucun message")
    }
    stages {
        stage('Build') {
            steps {
                echo "${params.MESSAGE}"
                writeFile(file:"./f.txt",text:params.MESSAGE)
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo readFile("./f.txt")
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
