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
                    ls -lah
                }

				timeout(time: 6, unit: 'SECONDS') {
                    sh '/var/jenkins_home/scripts/fibonacci.sh 32'
                }
            }
        }
    }
}