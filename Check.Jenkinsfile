pipeline {
    agent any
    stages {
        stage('Check') {
            steps {
                sh 'bundle exec rubocop --require rubocop/formatter/checkstyle_formatter --format RuboCop::Formatter::CheckstyleFormatter --no-color --rails --out tmp/rubocop-checkstyle.xml'
            }
        }
     }

    post {
        always {
            echo 'Report to github.'
            sh 'bundle exec danger'
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