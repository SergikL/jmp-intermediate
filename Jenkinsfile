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

				sh 'echo "Who I'm $SHELL"'
				timeout(time: 1, unit: 'MINUTES') {
                    sh '/var/jenkins_home/workspace/release/module-01/jenkins/script/run.sh -n "maven"'
                }
            }
        }
    }
}