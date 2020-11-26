pipeline {
    agent any
    parameters {
        string(name: 'buildTool', defaultValue: 'maven', description: 'Please provide maven or gradle')
    }
    stages {
        stage('Build') {
            steps {
                sh '''
					echo "${params.buildTool} provided"
                    ls -lah
					bash module-01/jenkins/script/run.sh -n "${params.buildTool}"
                '''
            }
        }
    }
}