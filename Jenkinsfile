pipeline {
    agent any
	parameters {
		choice(name: 'builder', choices: "maven\ngradle", description: 'please choose your preferable build tool')
	}
    stages {
        stage('Build') {
            steps {
                echo "Build is starting..."
                echo "Parameter '${params.builder}' has been provided"

				sh '''
					echo "Current directory:"
					pwd
					ls -lah
				'''

				sh '''
					echo "Files have to be run placed in:"
					ls -lah module-01/jenkins/builders
					cp -r module-01/jenkins/. /var/jenkins_home/scripts/project
					echo "Copied project to:"
					ls -lah /var/jenkins_home/scripts/project
				'''

				def BUILDER="${params.builder}"

                timeout(time: 3, unit: 'MINUTES') {
                    sh """/var/jenkins_home/scripts/project/script/run.sh -n ${BUILDER}"""
                }
            }
        }
    }
}