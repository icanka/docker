pipeline {
	agent { docker { image 'maven:3.3.3'} }
	stage ('build') {
		steps {
			sh 'mvn --version'
		}
	}
} 
