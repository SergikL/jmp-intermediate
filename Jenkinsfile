pipeline {
    agent any
	parameters {
        string(name: 'buildTool', defaultValue: 'maven', description: 'What build do you want to use?')
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo "biuld has been initiated"'
				sh 'echo "${params.buildTool}"'
                sh '''
                    ls -lah
					bash module-01/jenkins/script/run.sh -n "${params.buildTool}"
                '''
            }
        }
    }
}
