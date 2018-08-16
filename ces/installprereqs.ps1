##bootstrap that shit

#download java
(New-Object System.Net.WebClient).DownloadFile("https://artifactory.concurtech.net/artifactory/ext-util-selfserve-local/java/oracle/windows/jdk-8u131-windows-x64.exe", "C:\ces-install\jdk-8u131-windows-x64.exe")
#download tomcat
(New-Object System.Net.WebClient).DownloadFile("https://artifactory.concurtech.net/artifactory/ext-util-selfserve-local/apache/tomcat/apache-tomcat-8.0.24.exe", "C:\ces-install\apache-tomcat-8.0.24.exe")
#download war file
(New-Object System.Net.WebClient).DownloadFile("https://artifactory.concurtech.net/artifactory/util-release-local/com/concur/cmo/CESWebapp/SU153/153.0.0.0.115/concur.war", "C:\ces-install\concur.war")
#install java
Start-Process -Wait -Filepath "C:\ces-install\jdk-8u131-windows-x64.exe" -ArgumentList 
#install tomcat
Start-Process -Wait -Filepath "C:\ces-install\apache-tomcat-8.0.24.exe" -ArgumentList
#copy war to deploy location
Copy-Item "C:\ces-install\concur.war" "C:\apache-tomcat-8.0.24\webapps"
