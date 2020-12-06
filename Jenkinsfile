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
					echo "Copy file run.sh from:"
					ls -lah module-01/jenkins/script/
					cp module-01/jenkins/script/run.sh /var/jenkins_home/scripts/
					echo "Successfully copied to:"
					ls -lah /var/jenkins_home/scripts/
				'''

                timeout(time: 1, unit: 'MINUTES') {
                    sh '/var/jenkins_home/scripts/run.sh -n "'${params.builder}'"'
                }
            }
        }
    }
}