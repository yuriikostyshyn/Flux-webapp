require 'dependencies'
Project.local_task :deploy
Project.local_task :unix_deploy

repositories.remote << 'http://mirrors.ibiblio.org/maven2/'

define 'Flux-webapp' do
	project.version = FLUX_VERSION
	project.group = 'com.flux'
	compile.with COMMONS_LOGGING, MOCKITO, SPRING
	package :war
	task :deploy => :compile do
		system 'COPY "target\*.war" "%JBOSS_HOME%\standalone\deployments\"'
	end	
	task :unix_deploy => :compile do
		system 'cp target/*.war $JBOSS_HOME/standalone/deployments'
	end	
	
end
