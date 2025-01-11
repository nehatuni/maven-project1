pipeline 
{
    agent {
        label 'dev-server'
    }

    tools {
      maven 'mymaven'
}


    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
    post {
        success {
            archiveArtifacts 'webapp/target/*.war'
        }
    }
}