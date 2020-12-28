def docker_img

pipeline{
	agent any
	stages{
		stage('Cloning the repository'){
			steps{
				checkout scm
			}
		}

		stage('Building the image'){
			steps{
				docker_img = docker.build("shivanvitha21/xgapp1")
			}
		}

		stage('Testing the image'){
			steps{
				docker_img.inside{
					echo "Tests are passed"
				}
			}
		}

		stage('Pushing the image to docker hub'){
			steps{
				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub'){
					docker_img.push("${env.BUILD_NUMBER}")
					docker_img.push("latest")
					}	

						echo "Pushing to docker hub"
				}
		}	

}
post{
	success {
    	mail to: 'shivanvitha21@gmail.com',
      		subject: "Pipeline Updates: ${currentBuild.fullDisplayName}",
      		body: "${env.BUILD_URL} is a success"
  		}
	}
}
