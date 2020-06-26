def getRemoteUrlWithCredentials(credentialsId) {
    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: credentialsId, usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD']]) {
        def scmUrl = scm.getUserRemoteConfigs()[0].getUrl()
        scmUrl = scmUrl.substring(scmUrl.indexOf("github.com"))
        return "https://${GIT_USERNAME}:${GIT_PASSWORD}@${scmUrl}"
    }
}

pipeline {
    agent any
    parameters {
        string(name: 'MESSAGE', defaultValue: "Il n'y a aucun message")
    }

    stages {
        stage('Build') {
            steps {
                echo "${params.MESSAGE}"
                writeFile(file:"./users.txt",text:params.MESSAGE)
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo readFile("./input.tfvars")
                
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
