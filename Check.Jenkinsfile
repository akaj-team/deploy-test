pipeline {
    agent any
    stages {
        stage('Build & Test') {
            steps {
                sh 'env'
                sh 'rm -f env.list'
                sh 'env | grep "GIT\\|NODE_\\|STAGE\\|BUILD\\|JOB_NAME\\|ghprbPullId\\|CHANGE_ID" > env.list'
                sh 'cat env.list'
                sh 'make check'
            }
        }
        stage('Deploy to Stg'){
            steps {
                sh 'docker ps -a -q --filter ancestor=test/ruby-env --format="{{.ID}}" | xargs docker stop || true'
                sh 'make build'
                echo 'Deploy to Stg.'
            }
        }
        stage('Run UI test'){
            steps {
                echo 'Deploy UI test.'
            }
        }
        stage('Deploy to Prod'){
            steps {
                echo 'Deploy to Prod.'
                slackSend color: 'good', message: 'successfully deployed to staging(<http://172.16.110.134:8082|stg.ruby-test.com>)'
            }
        }
        stage('Run smoke test'){
            steps {
                echo 'Run smoke test.'
            }
        }
     }

    post {
        always {
            echo 'Report to github.'
        }
        success {
            echo 'build is success!!!'
        }
        failure {
            echo 'build is failure!!!'
            // TODO something
        }
    }
}