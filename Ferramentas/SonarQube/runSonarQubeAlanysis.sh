# generate OWASP reports
mvn clean install
# generate OWASP reports
mvn dependency-check:aggregate -PsonarReports
# actual SonarQube analysis
mvn verify sonar:sonar \
  -Dsonar.projectKey=DockerSonar \
  -Dsonar.host.url=http://localhost:9001 \
  -Dsonar.login=sqp_2e5afd68aec9b9d04b3442091636c55890063de6