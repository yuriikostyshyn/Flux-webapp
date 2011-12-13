require 'dependencies'

repositories.remote << 'http://mirrors.ibiblio.org/maven2/'

define 'Flux-webapp' do
	resources.from(_("t/"))
	project.version = FLUX_VERSION
	project.group = 'com.flux'
	compile.with MOCKITO, SPRING
	package :war
	task :run => :compile do
		system 'COPY "target\Flux-webapp-1.0.0.war" "%JBOSS_HOME%\standalone\deployments\"'
	end	
end