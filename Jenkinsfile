pipeline {
    
    environment {

       AWS_ACCESS_KEY_ID    = credentials('AWS_ACCESS_KEY_ID')

       AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    
    agent any
    
    parameters {
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'prod'],
            description: 'Select the environment to apply Terraform code'
        )
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Clone the GitHub repository
                git branch: 'main',
                url: 'https://github.com/Mostafaa-Elkhouly/Terraform.git'
            }
        }
        stage('initialize Terraform') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Apply Terraform') {
            steps {
                script {
                    def env = params.ENVIRONMENT
                    echo "Applying Terraform for ${env} environment"
                        
                    // Depending on the environment, run the appropriate Terraform commands
                    if (env == 'dev') {
                        sh 'terraform workspace select dev'
                        sh 'terraform apply --var-file=dev.tfvars -auto-approve'
                    } else if (env == 'prod') {
                        sh 'terraform workspace select prod'
                        sh 'terraform apply --var-file=prod.tfvars -auto-approve'
                    }
                }
            }
        }
    }
    
    post {
        success {
            // archiving artifacts (Export/Publish File To Jenkins Server)
            archiveArtifacts 'inventory'
        }
    }
}
