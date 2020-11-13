setup jenkins plugins.txt

instuction: https://stackoverflow.com/questions/46255277/how-do-i-add-plugins-to-a-docker-jenkins

Dockerfile
 FROM jenkins/jenkins:lts
 COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
 RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

Commands to get current jenkins plugins: go to Script Console

List<String> jenkinsPlugins = new ArrayList<String>(Jenkins.instance.pluginManager.plugins);

jenkinsPlugins.sort { it.displayName }
              .each {
                plugin -> println ("${plugin.shortName}:${plugin.version}")
              } 
