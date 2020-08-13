
pipeline {
    agent any
    // plugins {
    //     id "org.sonarqube" version "2.7"
    // }
    stages {
        stage('Repository') {
            steps {
                // git 'https://github.com/cjafet/commit-pipeline-jenkins.git'
                sh '"$JENKINS_HOME/workspace/$JOB_NAME/git-ck-head-arg.sh" policy' 
            }
        }

        stage('Check OPA') {
            steps {
                sh 'opa check .'
            }
        }

        stage('Test OPA') {
            steps {
               sh 'opa test . -m 1 -v'
            }
        }

        stage('OPA Coverage') {
            steps {
                sh 'opa test . -c -m 1 --threshold 100.0'
            }
        }

        stage('PutRequest') {
            steps {
                //sh 'chmod +x "$JENKINS_HOME/workspace/$JOB_NAME/run.sh"'
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