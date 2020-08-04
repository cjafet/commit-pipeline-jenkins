pipeline {
    agent any
    triggers {
        pollSCM('H/5 * * * *')
    }
    stages {
        stage('Repository') {
            steps {
                git 'https://github.com/cjafet/commit-pipeline-jenkins.git'
            }
        }
        stage('PutRequest') {
            steps {
                sh 'chmod +x "$JENKINS_HOME/workspace/$JOB_NAME/run.sh"'
                sh '"$JENKINS_HOME/workspace/$JOB_NAME/run.sh"'
            }
        }
    }
    post {
        failure {
            mail to: 'carlos.neto@zup.com.br',
            subject: 'Pipeline ${currentBuild.fullDisplayName} Failed.',
            body: 'Your build failed, please check: ${env.BUILD_url}'
        }
    }
} 
