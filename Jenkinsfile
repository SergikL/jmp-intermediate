pipeline {
    agent any
	parameters {
		choice(name: 'builder', choices: "maven\gradle", description: 'please choose your preferable build tool')
	}
    stages {
        stage('Build') {
            steps {
                echo "Build is starting..."
                echo "Parameter '${params.builder}' has been provided"
				sh '''
					echo "Current directory:"
					sh 'pwd'
					sh 'ls -lah'
				'''

                timeout(time: 1, unit: 'MINUTES') {
                    sh '''#!/bin/bash
                        /var/jenkins_home/workspace/release/module-01/jenkins/script/run.sh -n "maven"
                    '''
                }
            }
        }
    }
}