pipeline {
    agent any
	// tools{
	// 	docker 'Docker'
	// }
	

    stages {
	stage('Checkout'){
		steps{
			script{
				git branch: 'main', url: 'https://github.com/Shiva-anjali5/April1.git'
			}
		}
	}
        stage('Test') {
            steps {
                script {
                    // Check if Docker is available
                    bat 'docker info'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    // Build the Docker image from a Java file
                    bat 'docker build -t my-java-test-app .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run a container using the Docker image
                    bat 'docker run -d --name my-container my-java-test-app'
                    // Fetch the output of the java script
		                bat 'docker logs my-container'
                }
            }
        }
    }
}
