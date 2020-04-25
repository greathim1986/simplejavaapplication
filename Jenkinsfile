pipeline {
   agent any
   tools {
	maven 'maven-3.6.1'
	 }
   stages {
	stage("VERSION")
	 {
		steps {
		   sh "mvn --version"
         }
		}

	stage("Clean and package")
	 {
	 	steps {
		    sh "mvn clean package"
		      }
	 }

	stage("DEPLOY")
	 {
		steps {
			sh "docker run -it -d --rm -p 8090:8080 --name my-tomcat-container simplejavaapplication"
                        sh "docker build --tag=simplejavaapplication ."
			sh "docker tag simplejavaapplication greathim1986/simplejavaapplication:webapp-2504"
			sh "docker login -u 'greathim1986' -p 'Himrocks1@' docker.io"
			sh "docker push greathim1986/simplejavaapplication:webapp-2504"

		      }
	 }
          }
	}
