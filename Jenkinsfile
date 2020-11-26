pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "biuld has been initiated"'
				sh 'echo "${params.buildTool}" provided'
                sh '''
                    ls -lah
					bash module-01/jenkins/script/run.sh -n "${params.buildTool}"
                '''
            }
        }
    }
}
