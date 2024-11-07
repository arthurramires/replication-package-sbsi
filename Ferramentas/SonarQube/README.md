```markdown
# Setup SonarQube Using Docker for Java Applications

This guide will help you set up a SonarQube instance using Docker and configure it to analyze Java applications. This article is mainly for beginners who want to install SonarQube locally, but it also applies to any use case requiring static code analysis.

## What is SonarQube?

SonarQube is a **Code Review Buddy** that helps keep your project clean, ensuring clean code practices, the absence of bugs, and minimizing vulnerabilities. It performs static analysis on your code and provides feedback if there are issues that need attention.

### Key Features:

- **Bugs**: SonarQube detects potential problems in your code.
- **Vulnerabilities**: It alerts if you are using libraries with known vulnerabilities.
- **Security Hotspots**: Indicates areas that could be potential security risks.
- **Code Smells**: Highlights non-optimal code or poor practices.
- **Coverage**: Shows how many lines of code are covered by tests.
- **Duplications**: Identifies duplicated code blocks.

## Prerequisites

- Install Docker and Docker Compose on your machine. Follow the complete installation guide on the official Docker website.

## Setting Up SonarQube with Docker

Create a `docker-compose.yml` file with the following content:

```yaml
version: "3"

services:
  sonarqube:
    image: sonarqube:lts-community
    depends_on:
      - sonar_db
    environment:
      SONAR_JDBC_URL: jdbc:postgresql://sonar_db:5432/sonar
      SONAR_JDBC_USERNAME: sonar
      SONAR_JDBC_PASSWORD: sonar
    ports:
      - "9001:9000"
    volumes:
      - sonarqube_conf:/opt/sonarqube/conf
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_extensions:/opt/sonarqube/extensions
      - sonarqube_logs:/opt/sonarqube/logs
      - sonarqube_temp:/opt/sonarqube/temp

  sonar_db:
    image: postgres:13
    environment:
      POSTGRES_USER: sonar
      POSTGRES_PASSWORD: sonar
      POSTGRES_DB: sonar
    volumes:
      - sonar_db:/var/lib/postgresql
      - sonar_db_data:/var/lib/postgresql/data

volumes:
  sonarqube_conf:
  sonarqube_data:
  sonarqube_extensions:
  sonarqube_logs:
  sonarqube_temp:
  sonar_db:
  sonar_db_data:
```

### Explanation

- **Services**: Two services are defined: `sonarqube` and `sonar_db` (a PostgreSQL database).
- **Volumes**: Persistent storage is set up for both services to prevent data loss if containers are removed.

## Starting SonarQube

Run the following command in your terminal:

```bash
docker-compose up -d
```

Visit [http://localhost:9001/](http://localhost:9001/) in your browser. Use the default credentials:

- **Login**: `admin`
- **Password**: `admin`

## Configuring Your Project in SonarQube

1. Set up your project name and default branch (e.g., `master`, `main`, or `dev`).
2. Generate a token for your project. For simplicity, you can use the "No expiration" option.
3. Save the token for later use.

### Running Analysis with Maven

For a Java project using Maven, use the following command:

```bash
mvn clean verify sonar:sonar \
  -Dsonar.projectKey=SonarQubeDockerDemo \
  -Dsonar.host.url=http://localhost:9001 \
  -Dsonar.login=<YOUR_TOKEN>
```

Replace `<YOUR_TOKEN>` with the token you generated.

## Adding OWASP Dependency Check Plugin

1. Go to `Administration -> Marketplace` in SonarQube and install the OWASP Dependency Check plugin.
2. Configure your Maven project to include OWASP Dependency Check.

### Example Maven Configuration

In your `pom.xml`:

```xml
<properties>
    <java.version>17</java.version>
    <jacoco.version>0.8.11</jacoco.version>
    <sonar.dependencyCheck.basePath>${project.basedir}/owasp-dependency-check-logs</sonar.dependencyCheck.basePath>
    <sonar.dependencyCheck.htmlReportPath>${sonar.dependencyCheck.basePath}/dependency-check-report.html</sonar.dependencyCheck.htmlReportPath>
    <sonar.dependencyCheck.jsonReportPath>${sonar.dependencyCheck.basePath}/dependency-check-report.json</sonar.dependencyCheck.jsonReportPath>
    <sonar.dependencyCheck.summarize>true</sonar.dependencyCheck.summarize>
    <sonar.coverage.exclusions>**/controller/debug/**/*</sonar.coverage.exclusions>
    <sonar.exclusions>src/test/**/*</sonar.exclusions>
    <sonar.sources>src,pom.xml</sonar.sources>
    <sonar.test.inclusions>src/test/**/*</sonar.test.inclusions>
    <sonar.tests>src</sonar.tests>
</properties>
```

Add JaCoCo for code coverage:

```xml
<dependency>
    <groupId>org.jacoco</groupId>
    <artifactId>jacoco-maven-plugin</artifactId>
    <version>0.8.11</version>
</dependency>
```

### Maven Build Plugins

```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.sonarsource.scanner.maven</groupId>
            <artifactId>sonar-maven-plugin</artifactId>
            <version>3.9.1.2184</version>
        </plugin>
        <plugin>
            <groupId>org.jacoco</groupId>
            <artifactId>jacoco-maven-plugin</artifactId>
            <version>${jacoco.version}</version>
            <executions>
                <execution>
                    <id>jacoco-initialize</id>
                    <goals>
                        <goal>prepare-agent</goal>
                    </goals>
                </execution>
                <execution>
                    <id>jacoco-site</id>
                    <phase>package</phase>
                    <goals>
                        <goal>report</goal>
                    </goals>
                </execution>
                <execution>
                    <id>report</id>
                    <phase>test</phase>
                    <goals>
                        <goal>report</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <version>3.1.2</version>
        </plugin>
    </plugins>
</build>
```

### Profile for OWASP Reports

```xml
<profiles>
    <profile>
        <id>sonarReports</id>
        <activation>
            <activeByDefault>false</activeByDefault>
        </activation>
        <build>
            <plugins>
                <plugin>
                    <groupId>org.owasp</groupId>
                    <artifactId>dependency-check-maven</artifactId>
                    <version>6.5.3</version>
                    <configuration>
                        <outputDirectory>${sonar.dependencyCheck.basePath}</outputDirectory>
                        <formats>
                            <format>html</format>
                            <format>json</format>
                        </formats>
                    </configuration>
                    <executions>
                        <execution>
                            <id>generate-dependency-check-report</id>
                            <goals>
                                <goal>aggregate</goal>
                            </goals>
                        </execution>
                    </executions>
                </plugin>
            </plugins>
        </build>
    </profile>
</profiles>
```

## Running the Analysis

1. Generate OWASP reports:
   ```bash
   mvn clean install
   mvn dependency-check:aggregate -PsonarReports
   ```

2. Run the SonarQube analysis:
   ```bash
   mvn verify sonar:sonar \
     -Dsonar.projectKey=SonarQubeDockerDemo \
     -Dsonar.host.url=http://localhost:9000 \
     -Dsonar.login=<YOUR_TOKEN>
   ```

Replace `<YOUR_TOKEN>` with your actual token.

## Resources

- [SonarQube Example Project](https://github.com/DenisVerkhovsky/SonarQubeDockerDemo)
- [Docker Images](https://hub.docker.com/)
- [SonarQube Official Site](https://www.sonarqube.org/)
- [OWASP Dependency Check Plugin](https://owasp.org/www-project-dependency-check/)
```