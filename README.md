#This is the tomee-bluemix project
It is a simple skeleton project to run on Apache Tomee on IBM Bluemix

It uses internal configuration to be able to run on IBM Bluemix. Therefore 'mvn tomee:run' will not work since the port number is wrong

It is based on the community buildpacks at [IBM Bluemix](https://www.ng.bluemix.net/docs/cfapps/byob.html)

We use the specific Tomee executable version to run on Bluemix:

	mvn clean tomee:exec

will build a tomee-bluemix-exec.jar in target.

to push this to Bluemix:

	cf push <yourproject> -p target/tomee-bluemix-exec.jar -b java_buildpack