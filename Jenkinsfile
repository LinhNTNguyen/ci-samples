
pipeline {
    agent {
        docker {
            image 'katalonstudio/katalon'
            args "-u root"
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'katalonc.sh -browserType="Chrome" -retry=0 -statusDelay=15 -projectPath="https://github.com/LinhNTNguyen/ci-samples/blob/master/test.prj" -testSuitePath="Test Suites/TS_RegressionTest" -apikey="1a76271f-d2c0-4079-b892-98e59860ebcf"'
            }
        }
    }
    
}

