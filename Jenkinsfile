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
					ls -lah module-01/jenkins/script
					cp module-01/jenkins/script/run.sh /var/jenkins_home/scripts
					echo "Successfully copied to:"
					ls -lah /var/jenkins_home/scripts
				'''

				sh '''
					echo "Files have to be run placed in:"
					ls -lah module-01/jenkins/builders
					echo 'jenkins' | sudo -S chmod 777 module-01/jenkins/builders
					echo 'jenkins' | sudo -S chmod +x module-01/jenkins/builders/mvnw
					echo 'jenkins' | sudo -S chmod +x module-01/jenkins/builders/gradlew
				'''

                timeout(time: 1, unit: 'MINUTES') {
                    sh '/var/jenkins_home/scripts/run.sh -n maven'
                }
            }
        }
    }
}