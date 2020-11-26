pipeline {
    agent any
    parameters {
        string(name: 'buildTool', defaultValue: 'maven', description: 'Please provide maven or gradle')
    }
    stages {
        stage('Build') {
            steps {
				echo "${params.buildTool} provided"

				timeout(time: 5, unit: 'SECONDS') {
                    sh 'ls -lah'
                }

				timeout(time: 1, unit: 'MINUTES') {
                    sh '/home/jenkins/workspace/release/module-01/jenkins/script/run.sh maven'
                }
            }
        }
    }
}