pipeline {
    agent any
    tools {
        jdk 'jdk17'
        terraform 'terraform'
        nodejs 'nodejs' // Assuming 'nodejs' is the tool name for Node.js in your Jenkins configuration
        sonarQube 'sonar-server'
    }
    environment {
        SCANNER_HOME = tool 'sonar-scanner'
        PATH = "$PATH:${tool 'nodejs'}/bin"
    }
    stages {
        // ... your existing stages ...

        stage('Terraform plan') {
            steps {
                script {
                    // Ensure Node.js is available before running Terraform plan
                    if (!bat(script: 'node -v', returnStatus: true)) {
                        error 'Node.js is not installed. Aborting.'
                    }

                    // Run Terraform plan
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform apply') {
            steps {
                script {
                    // Ensure Node.js is available before running Terraform apply
                    if (!bat(script: 'node -v', returnStatus: true)) {
                        error 'Node.js is not installed. Aborting.'
                    }

                    // Run Terraform apply
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
