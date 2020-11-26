pipeline {
    agent any
    parameters {
        string(name: 'buidTool', defaultValue: 'maven', description: 'Please provide maven or gradle')
    }
    stages {
        stage('Build') {
            steps {
                echo "${params.buidTool} provided!"
            }
        }
    }
}