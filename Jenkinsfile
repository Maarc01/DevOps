 pipeline {

     agent any
	 
	 stages{
	 
		stage ('clone repo from hub'){
			steps{
				
				git branch: 'main', credentialsId: 'none', url: 'https://github.com/Maarc01/DevOps.git'
				
			}
		}
      
        stage ('Compile code') {
            steps {
				script{
				bat 'docker build -t python-image ./'
				}
			}
        }
		stage ('execute code') {
            steps {
				script{
                bat 'docker run -t -v D:\\DevOps\\Jenkins\\DevOps:/data python-image'
                
				}
			}
        }
		}
		}