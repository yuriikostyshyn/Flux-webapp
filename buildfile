require 'dependencies'

repositories.remote << 'http://mirrors.ibiblio.org/maven2/'

define 'Flux-webapp' do
	project.version = FLUX_VERSION
	project.group = 'com.flux'
	compile.with COMMONS_LOGGING, MOCKITO, SPRING
	package :war
end

