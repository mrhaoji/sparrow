vim ~/.m2/settings.xml

<mirrors>
<mirror>
    <id>repo1</id>
    <name>repo1</name>
    <url>http://repo1.maven.org/maven2/</url>
    <mirrorOf>central</mirrorOf>
</mirror>
<mirror>
    <id>repo2</id>
    <name>repo2</name>
    <url>http://repo2.maven.org/maven2/</url>
    <mirrorOf>central</mirrorOf>
</mirror>
</mirrors>
  <proxies>
   <proxy>
      <active>true</active>
      <protocol>http</protocol>
      <host>ops.kodiak.nx</host>
      <port>8888</port>
    </proxy>
  </proxies>
</settings>

sudo vim /usr/share/maven/conf/settings.xml
sudo vim /users/mrhaoji/.m2/settings.xml

mvn compile -Dmaven.repo.local=/users/mrhaoji/.m2/repository

http://repo.maven.apache.org/maven2/org/codehaus/mojo/build-helper-maven-plugin/1.7/build-helper-maven-plugin-1.7.pom