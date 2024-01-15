pipeline {
    agent any
    tools {
        jdk 'jdk17'
        terraform 'terraform'
        nodejs 'nodejs' // Use the correct tool type for Node.js (e.g., 'nodejs')
        sonarqube 'sonar-server' // Use the correct tool type for SonarQube (e.g., 'sonarqube')
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
