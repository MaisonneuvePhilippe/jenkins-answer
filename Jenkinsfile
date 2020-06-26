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
                script{
                    echo "${params.MESSAGE}"

                    def buckets = MESSAGE.split("/")
                    echo "${buckets}"
                    
                    
                    for (String bucket: MESSAGE.split("/")){
                        echo "${bucket}"
                        
                        def name = bucket.split(":")

                        echo name
                        // def content = bucket.split(":")[1]

                        // echo "${name} contains ${content}"
                    }

                }   
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
