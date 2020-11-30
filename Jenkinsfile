pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Build is starting..."
                echo "${params.builder} provided"
                sh 'ls -lah'
                timeout(time: 1, unit: 'MINUTES') {
                    sh '''#!/bin/bash
                        /var/jenkins_home/workspace/release/module-01/jenkins/script/run.sh -n "maven"
                    '''
                }
            }
        }
    }
}
