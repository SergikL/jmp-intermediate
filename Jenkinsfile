pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "biuld has been initiated"'
				echo "${params.buildTool}"'
                sh '''
                    ls -lah
					bash module-01/jenkins/script/run.sh -n "${params.buildTool}"
                '''
            }
        }
    }
}
