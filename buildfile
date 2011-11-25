repositories.remote << 'http://www.ibiblio.org/maven2'

SPRING_ASM= 'org.springframework:spring-asm:jar:3.0.6.RELEASE'
SPRING_BEANS= 'org.springframework:spring-beans:jar:3.0.6.RELEASE'
SPRING_CONTEXT= 'org.springframework:spring-context:jar:3.0.6.RELEASE'
SPRING_CORE= 'org.springframework:spring-core:jar:3.0.6.RELEASE'
SPRING_EXPRESSION= 'org.springframework:spring-expression:jar:3.0.6.RELEASE'
SPRING_WEB= 'org.springframework:spring-web:jar:3.0.6.RELEASE'
SPRING_WEBMVC= 'org.springframework:spring-webmvc:jar:3.0.6.RELEASE'


define 'Flux-webapp' do
	project.version = '1.0.0'
	compile.with SPRING_ASM, SPRING_BEANS, SPRING_CONTEXT, SPRING_CORE, SPRING_EXPRESSION, SPRING_WEB, SPRING_WEBMVC 
	package :war
end

