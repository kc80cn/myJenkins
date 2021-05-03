pipeline {

  agent any
  
    tools{
    	maven "maven3.6"
    }	  
    stages{
    
        stage('Initialize') {
          steps {
            sh 'echo "======= Initialize stage ======="'
	    sh '''
	    	echo $PATH
		echo $M2_HOME
		'''
          	}
        }
    stage('Build') {
          steps {
            sh 'echo "======= Build stage ======="'
	    sh '''
		mvn clean package
		'''
          	}
        }	
    
    }	

}
