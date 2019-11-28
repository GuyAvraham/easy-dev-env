def suiteRunId = UUID.randomUUID().toString().replace("-", "")

def start_ec2() {
    EC2=sh(returnStdout: true, script: "curl http://ec2_manager:5000/instances/start | jq -r \'.instance_id\'")
    sh "echo Free instance: ${EC2}"
    return EC2
}

void stop_ec2(id) {
    sh 'curl -X PATCH http://ec2_manager:5000/instances/$EC2/stop'
}

pipeline {
    agent { label 'master' }
    environment {
        EC2_SERVICE="http://ec2_manager:5000/instances"
        EC2=start_ec2().trim()
        SLAVE_LABEL = "slave-${suiteRunId}"
    }
    stages {
        stage('Running tests') {
            agent { label "${EC2}" }
            steps {

            }
        }
    }
    post {
        always {
            stop_ec2("${EC2}")
        }
    }
}