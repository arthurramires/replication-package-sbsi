# Configurações de paths e variáveis
$csDetectorPath    = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Ferramentas\csDetector"
$sentistrengthPath = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Ferramentas\csDetector\senti"
$outputCommunity   = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Datasets\ExtractionResults\Community"
$designitePath     = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Tools\Designite"
$outputCode        = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Datasets\ExtractionResults\Code"
$snapshotsPath     = "C:\Users\latinha\Desktop\Metodologia - Mestrado\Datasets\Snapshots"
$PAT               = "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"
$PAT               = "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"
# Lista de URLs dos repositórios
$reposURL = @(
    "https://github.com/Azure-Samples/acr-dotnet-manage-azure-container-registry",
    "https://github.com/Azure-Samples/acr-dotnet-manage-azure-container-registry-with-webhooks",
    "https://github.com/Azure-Samples/acr-tasks",
    "https://github.com/Azure-Samples/active-directory-b2c-dotnet-desktop",
    "https://github.com/Azure-Samples/active-directory-b2c-javascript-nodejs-webapi",
    "https://github.com/Azure-Samples/active-directory-b2c-xamarin-native",
    "https://github.com/Azure-Samples/active-directory-dotnet-native-aspnetcore-v2",
    "https://github.com/Azure-Samples/active-directory-dotnetcore-console-up-v2",
    "https://github.com/Azure-Samples/active-directory-verifiable-credentials-node",
    "https://github.com/Azure-Samples/agent-openai-python-prompty",
    "https://github.com/Azure-Samples/ai-rag-chat-evaluator",
    "https://github.com/Azure-Samples/aistudio-python-promptflow-sample",
    "https://github.com/Azure-Samples/aistudio-python-quickstart-sample",
    "https://github.com/aws-samples/amazon-bedrock-audio-summarizer",
    "https://github.com/aws-samples/amazon-bedrock-rag",
    "https://github.com/aws-samples/amazon-chime-sdk-meetings-with-amplify",
    "https://github.com/aws-samples/amazon-chime-sdk-pstn-audio-voice-focus",
    "https://github.com/aws-samples/amazon-cloudfront-access-logs-queries",
    "https://github.com/aws-samples/amazon-cloudfront-cache-graphql",
    "https://github.com/aws-samples/amazon-cloudfront-functions",
    "https://github.com/aws-samples/amazon-cloudfront-secure-static-site",
    "https://github.com/aws-samples/amazon-cloudwatch-auto-alarms",
    "https://github.com/aws-samples/amazon-codeguru-javascript-detectors",
    "https://github.com/aws-samples/amazon-codeguru-python-detectors",
    "https://github.com/aws-samples/amazon-connect-chat-translate",
    "https://github.com/aws-samples/amazon-devops-guru-connector-servicenow",
    "https://github.com/aws-samples/amazon-eks-inter-az-traffic-visibility",
    "https://github.com/aws-samples/amazon-elasticache-samples",
    "https://github.com/aws-samples/amazon-eventbridge-resource-policy-samples",
    "https://github.com/aws-samples/amazon-forecast-mlops-pipeline-cdk",
    "https://github.com/aws-samples/amazon-ivs-chat-web-demo",
    "https://github.com/aws-samples/amazon-ivs-clip-web-demo",
    "https://github.com/aws-samples/amazon-ivs-dvr-web-demo",
    "https://github.com/aws-samples/amazon-ivs-ecommerce-android-demo",
    "https://github.com/aws-samples/amazon-ivs-fitness-web-demo",
    "https://github.com/aws-samples/amazon-ivs-on-demand-android-demo",
    "https://github.com/aws-samples/amazon-ivs-player-android-sample",
    "https://github.com/aws-samples/amazon-ivs-player-web-sample",
    "https://github.com/aws-samples/amazon-ivs-real-time-streaming-android-samples",
    "https://github.com/aws-samples/amazon-kendra-langchain-extensions",
    "https://github.com/aws-samples/amazon-kinesis-analytics-beam-taxi-consumer",
    "https://github.com/aws-samples/amazon-kinesis-analytics-streaming-etl",
    "https://github.com/aws-samples/amazon-kinesis-data-analytics-flink-benchmarking-utility",
    "https://github.com/aws-samples/amazon-kinesis-data-analytics-snapshot-manager-for-flink",
    "https://github.com/aws-samples/amazon-location-service-pettracker-demo",
    "https://github.com/aws-samples/amazon-lookout-for-vision",
    "https://github.com/aws-samples/amazon-lookout-for-vision-demo",
    "https://github.com/aws-samples/amazon-rekognition-custom-labels-demo",
    "https://github.com/aws-samples/amazon-rekognition-engagement-meter",
    "https://github.com/aws-samples/amazon-rekognition-ppe",
    "https://github.com/aws-samples/amazon-rekognition-serverless-large-scale-image-and-video-processing",
    "https://github.com/aws-samples/amazon-rekognition-virtual-proctor",
    "https://github.com/aws-samples/amazon-s3-multipart-upload-transfer-acceleration",
    "https://github.com/aws-samples/amazon-s3-resumable-upload",
    "https://github.com/aws-samples/amazon-sagemaker-amazon-routing-challenge-sol",
    "https://github.com/aws-samples/amazon-sagemaker-endpoint-deployment-of-siamese-network-with-torchserve",
    "https://github.com/aws-samples/amazon-sagemaker-mlflow-fargate",
    "https://github.com/aws-samples/amazon-translate-pdf",
    "https://github.com/aws-samples/amazon-workspaces-portal-sample",
    "https://github.com/googlesamples/android-custom-lint-rules",
    "https://github.com/Azure-Samples/aoai-net-starterkit",
    "https://github.com/Azure-Samples/api-management-schema-import",
    "https://github.com/Azure-Samples/app-service-dotnet-access-key-vault-by-msi-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-configure-deployment-sources-for-functions",
    "https://github.com/Azure-Samples/app-service-dotnet-configure-deployment-sources-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-configure-deployment-sources-for-web-apps-async",
    "https://github.com/Azure-Samples/app-service-dotnet-configure-deployment-sources-for-web-apps-on-linux",
    "https://github.com/Azure-Samples/app-service-dotnet-deploy-image-from-acr-to-linux",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-authentication-for-functions",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-authentication-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-data-connections-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-data-connections-for-web-apps-on-linux",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-functions",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-functions-with-custom-domains",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-logs-for-function-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-staging-and-production-slots-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-storage-connections-for-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-storage-connections-for-web-apps-on-linux",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-web-apps-on-linux",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-web-apps-on-linux-with-custom-domains",
    "https://github.com/Azure-Samples/app-service-dotnet-manage-web-apps-with-custom-domains",
    "https://github.com/Azure-Samples/app-service-dotnet-scale-web-apps",
    "https://github.com/Azure-Samples/app-service-dotnet-scale-web-apps-on-linux",
    "https://github.com/Azure-Samples/app-service-language-detector",
    "https://github.com/aws-samples/appfabric-sample-log-generator",
    "https://github.com/Azure-Samples/ApplicationInsights-Java-Samples",
    "https://github.com/aws-samples/appmod-partners-serverless",
    "https://github.com/Azure-Samples/ARGUS",
    "https://github.com/Azure-Samples/ASA-Samples-Restful-Application",
    "https://github.com/aws-samples/avp-petstore-sample",
    "https://github.com/aws-samples/aws-amplify-example-recipe-app-react-native",
    "https://github.com/aws-samples/aws-analytics-genai-llm-workshop",
    "https://github.com/aws-samples/aws-appsync-resolver-samples",
    "https://github.com/aws-samples/aws-athena-udfs-textanalytics",
    "https://github.com/aws-samples/aws-auto-inventory",
    "https://github.com/aws-samples/aws-cdk-emr-s3-trigger",
    "https://github.com/aws-samples/aws-codeguru-profiler-python-demo-application",
    "https://github.com/aws-samples/aws-codepipeline-bitbucket-integration",
    "https://github.com/aws-samples/aws-cognito-java-desktop-app",
    "https://github.com/aws-samples/aws-control-tower-guardduty-enabler",
    "https://github.com/aws-samples/aws-control-tower-securityhub-enabler",
    "https://github.com/aws-samples/aws-dataexchange-api-samples",
    "https://github.com/aws-samples/aws-decoupled-serverless-scheduler",
    "https://github.com/aws-samples/aws-eks-crac",
    "https://github.com/aws-samples/aws-health-events-insight",
    "https://github.com/aws-samples/aws-iot-robot-connectivity-samples-ros2",
    "https://github.com/aws-samples/aws-lambda-java-workshop",
    "https://github.com/aws-samples/aws-management-and-governance-samples",
    "https://github.com/aws-samples/aws-marketplace-api-samples",
    "https://github.com/aws-samples/aws-marketplace-serverless-saas-integration",
    "https://github.com/aws-samples/aws-medialive-channel-orchestrator",
    "https://github.com/aws-samples/aws-mlflow-sagemaker-cdk",
    "https://github.com/aws-samples/aws-modernization-with-snyk-security",
    "https://github.com/aws-samples/aws-multi-region-bc-dr-workshop",
    "https://github.com/aws-samples/aws-nitro-enclave-blockchain-wallet",
    "https://github.com/aws-samples/aws-nitro-enclaves-workshop",
    "https://github.com/aws-samples/aws-panorama-samples",
    "https://github.com/aws-samples/aws-reinvent-2023-code-talk-assets",
    "https://github.com/aws-samples/aws-resilience-hub-tools",
    "https://github.com/aws-samples/aws-sam-jenkins-pipeline-tutorial",
    "https://github.com/aws-samples/aws-sdk-js-tests",
    "https://github.com/aws-samples/aws-serverless-developer-experience-workshop-dotnet",
    "https://github.com/aws-samples/aws-serverless-developer-experience-workshop-java",
    "https://github.com/aws-samples/aws-serverless-security-workshop",
    "https://github.com/aws-samples/aws-serverless-workshop-innovator-island",
    "https://github.com/aws-samples/aws-step-functions-progress-tracking",
    "https://github.com/aws-samples/aws-virtual-participant-framework-for-rtc",
    "https://github.com/aws-samples/aws-waf-ops-dashboards",
    "https://github.com/aws-samples/awsome-inference",
    "https://github.com/Azure-Samples/azure-cafe",
    "https://github.com/Azure-Samples/azure-cosmos-db-python-getting-started",
    "https://github.com/Azure-Samples/azure-edge-extensions-polyglotnotebook-aio",
    "https://github.com/Azure-Samples/azure-edge-extensions-retrieval-augmented-generation",
    "https://github.com/Azure-Samples/azure-functions-samples-java",
    "https://github.com/Azure-Samples/azure-government-openai-access",
    "https://github.com/Azure-Samples/azure-load-testing-samples",
    "https://github.com/Azure-Samples/azure-openai-reverse-proxy",
    "https://github.com/Azure-Samples/azure-openai-terraform-deployment-sample",
    "https://github.com/Azure-Samples/azure-samples-python-management",
    "https://github.com/Azure-Samples/azure-search-dotnet-scale",
    "https://github.com/Azure-Samples/azure-search-java-samples",
    "https://github.com/Azure-Samples/azure-search-python-samples",
    "https://github.com/Azure-Samples/azure-service-operator-samples",
    "https://github.com/Azure-Samples/azure-spring-data-cosmos-java-sql-api-samples",
    "https://github.com/Azure-Samples/azure-sql-binding-func-dotnet-todo",
    "https://github.com/Azure-Samples/azure-sql-db-dotnet-rest-api",
    "https://github.com/Azure-Samples/azure-sql-db-fullstack-serverless-kickstart",
    "https://github.com/Azure-Samples/azure-sql-db-fusioncache",
    "https://github.com/Azure-Samples/azure-sql-db-sync-api-change-tracking",
    "https://github.com/Azure-Samples/azure-sql-db-todo-backend-func-node",
    "https://github.com/Azure-Samples/azure-sql-db-who-am-i",
    "https://github.com/Azure-Samples/azure-sql-functions-geocode",
    "https://github.com/aws-samples/bedrock-access-gateway",
    "https://github.com/Azure-Samples/build-your-first-orleans-app-aspnetcore",
    "https://github.com/Azure-Samples/cassandra-mi-client-configurator",
    "https://github.com/aws-samples/cdk-amazon-mwaa-cicd",
    "https://github.com/Azure-Samples/cdn-dotnet-manage-cdn",
    "https://github.com/aws-samples/clickstream-consumer-for-apache-kafka",
    "https://github.com/aws-samples/clickstream-producer-for-apache-kafka",
    "https://github.com/Azure-Samples/cognitive-services-python-sdk-samples",
    "https://github.com/Azure-Samples/communication-services-android-calling-hero",
    "https://github.com/Azure-Samples/communication-services-python-quickstarts",
    "https://github.com/Azure-Samples/communication-services-ui-library-maui",
    "https://github.com/Azure-Samples/communication-services-ui-library-xamarin",
    "https://github.com/Azure-Samples/compute-dotnet-manage-user-assigned-msi-enabled-virtual-machine",
    "https://github.com/Azure-Samples/compute-dotnet-manage-vm-async",
    "https://github.com/Azure-Samples/container-apps-dynamic-sessions-samples",
    "https://github.com/Azure-Samples/cosmos-db-nosql-dotnet-samples",
    "https://github.com/Azure-Samples/cosmos-db-nosql-python-samples",
    "https://github.com/Azure-Samples/cosmos-dotnet-core-getting-started",
    "https://github.com/Azure-Samples/cosmosdb-dotnet-create-cosmosdb-and-get-mongodb-connection-string",
    "https://github.com/aws-samples/cost-effective-aws-deployment-of-comfyui",
    "https://github.com/aws-samples/custom-web-experience-with-amazon-q-business",
    "https://github.com/Azure-Samples/data-box-samples",
    "https://github.com/aws-samples/data-engineering-for-aws-immersion-day",
    "https://github.com/Azure-Samples/digital-twins-docs-code",
    "https://github.com/Azure-Samples/digital-twins-iothub-integration",
    "https://github.com/Azure-Samples/dns-dotnet-host-and-manage-your-domains",
    "https://github.com/aws-samples/drs-malware-scan",
    "https://github.com/Azure-Samples/durablefunctions-apiscraping-dotnet",
    "https://github.com/Azure-Samples/e2e-dotnetcore-function-sendemail",
    "https://github.com/aws-samples/edge_diffusion_on_eks",
    "https://github.com/aws-samples/eks-multi-cluster-gitops",
    "https://github.com/aws-samples/eks-workshop-developers",
    "https://github.com/aws-samples/engineering-quickstarts-for-serverless-and-container-applications",
    "https://github.com/Azure-Samples/eventhub-dotnet-manage-event-hub",
    "https://github.com/Azure-Samples/eventhub-dotnet-manage-event-hub-events",
    "https://github.com/Azure-Samples/eventhub-dotnet-manage-event-hub-geo-disaster-recovery",
    "https://github.com/aws-samples/fedramp-integrated-inventory-workbook",
    "https://github.com/spring-cloud-samples/feign-eureka",
    "https://github.com/Azure-Samples/flask-app-on-azure-functions",
    "https://github.com/Azure-Samples/functions-docs-csharp",
    "https://github.com/Azure-Samples/functions-docs-javascript",
    "https://github.com/aws-samples/graceful-shutdown-with-aws-lambda",
    "https://github.com/aws-samples/graviton-workshop",
    "https://github.com/spring-guides/gs-accessing-data-jpa",
    "https://github.com/spring-guides/gs-accessing-data-mongodb",
    "https://github.com/spring-guides/gs-accessing-data-mysql",
    "https://github.com/spring-guides/gs-accessing-data-neo4j",
    "https://github.com/spring-guides/gs-accessing-data-r2dbc",
    "https://github.com/spring-guides/gs-accessing-data-rest",
    "https://github.com/spring-guides/gs-accessing-mongodb-data-rest",
    "https://github.com/spring-guides/gs-accessing-neo4j-data-rest",
    "https://github.com/spring-guides/gs-accessing-vault",
    "https://github.com/spring-guides/gs-actuator-service",
    "https://github.com/spring-guides/gs-async-method",
    "https://github.com/spring-guides/gs-authenticating-ldap",
    "https://github.com/spring-guides/gs-batch-processing",
    "https://github.com/spring-guides/gs-caching",
    "https://github.com/spring-guides/gs-centralized-configuration",
    "https://github.com/spring-guides/gs-cloud-circuit-breaker",
    "https://github.com/spring-guides/gs-consuming-rest",
    "https://github.com/spring-guides/gs-consuming-web-service",
    "https://github.com/spring-guides/gs-contract-rest",
    "https://github.com/spring-guides/gs-crud-with-vaadin",
    "https://github.com/spring-guides/gs-gateway",
    "https://github.com/spring-guides/gs-graphql-server",
    "https://github.com/spring-guides/gs-handling-form-submission",
    "https://github.com/spring-guides/gs-integration",
    "https://github.com/spring-guides/gs-managing-transactions",
    "https://github.com/spring-guides/gs-messaging-jms",
    "https://github.com/spring-guides/gs-messaging-rabbitmq",
    "https://github.com/spring-guides/gs-messaging-redis",
    "https://github.com/spring-guides/gs-messaging-stomp-websocket",
    "https://github.com/spring-guides/gs-multi-module",
    "https://github.com/spring-guides/gs-producing-web-service",
    "https://github.com/spring-guides/gs-reactive-rest-service",
    "https://github.com/spring-guides/gs-relational-data-access",
    "https://github.com/spring-guides/gs-rest-hateoas",
    "https://github.com/spring-guides/gs-rest-service",
    "https://github.com/spring-guides/gs-rest-service-cors",
    "https://github.com/spring-guides/gs-scheduling-tasks",
    "https://github.com/spring-guides/gs-securing-web",
    "https://github.com/spring-guides/gs-service-registration-and-discovery",
    "https://github.com/spring-guides/gs-serving-web-content",
    "https://github.com/spring-guides/gs-spring-boot",
    "https://github.com/spring-guides/gs-spring-boot-docker",
    "https://github.com/spring-guides/gs-spring-cloud-loadbalancer",
    "https://github.com/spring-guides/gs-spring-cloud-stream",
    "https://github.com/spring-guides/gs-spring-data-reactive-redis",
    "https://github.com/spring-guides/gs-tanzu-observability",
    "https://github.com/spring-guides/gs-testing-restdocs",
    "https://github.com/spring-guides/gs-testing-web",
    "https://github.com/spring-guides/gs-uploading-files",
    "https://github.com/spring-guides/gs-validating-form-input",
    "https://github.com/spring-guides/gs-vault-config",
    "https://github.com/aws-samples/http-requests-mirroring",
    "https://github.com/Azure-Samples/http-trigger-azure-function-premium-plan",
    "https://github.com/Azure-Samples/Hybrid-CSharp-Samples",
    "https://github.com/Azure-Samples/Hybrid-Golang-Samples",
    "https://github.com/Azure-Samples/Hybrid-Python-Samples",
    "https://github.com/aws-samples/integration-sample-lambda-msk",
    "https://github.com/Azure-Samples/iot-reliable-edge-relay",
    "https://github.com/Azure-Samples/iothub-to-azure-maps-geofencing",
    "https://github.com/Azure-Samples/java-native-telemetry",
    "https://github.com/aws-samples/jp-prototyping-blog",
    "https://github.com/Azure-Samples/js-e2e-express-server",
    "https://github.com/Azure-Samples/js-e2e-web-app-easy-auth-app-to-app",
    "https://github.com/Azure-Samples/key-vault-dotnet-manage-key-vaults",
    "https://github.com/aws-samples/lake-formation-permissions-sync",
    "https://github.com/aws-samples/lambda-extensions-workshop",
    "https://github.com/aws-samples/lambdaedge-openidconnect-samples",
    "https://github.com/Azure-Samples/llmops-gha-demo",
    "https://github.com/Azure-Samples/managed-disk-dotnet-convert-existing-virtual-machines-to-use-managed-disks",
    "https://github.com/Azure-Samples/managed-disk-dotnet-create-virtual-machine-using-custom-image",
    "https://github.com/Azure-Samples/managed-disk-dotnet-create-virtual-machine-using-custom-image-from-VHD",
    "https://github.com/aws-samples/migration-effort-estimator",
    "https://github.com/Azure-Samples/MipSDK-File-Java-Basic",
    "https://github.com/Azure-Samples/MipSDK-Protection-Dotnet-Quickstart",
    "https://github.com/Azure-Samples/MLOpsManufacturing",
    "https://github.com/Azure-Samples/monitor-dotnet-activitylog-alerts-on-security-breach-or-risk",
    "https://github.com/Azure-Samples/monitor-dotnet-autoscale-based-on-performance",
    "https://github.com/Azure-Samples/monitor-dotnet-metric-alerts-on-critical-performance",
    "https://github.com/Azure-Samples/ms-identity-android-java",
    "https://github.com/Azure-Samples/ms-identity-android-kotlin",
    "https://github.com/Azure-Samples/ms-identity-aspnet-daemon-webapp",
    "https://github.com/Azure-Samples/ms-identity-ciam-browser-delegated-android-sample",
    "https://github.com/Azure-Samples/ms-identity-ciam-native-auth-android-sample",
    "https://github.com/Azure-Samples/ms-identity-docs-code-dotnet",
    "https://github.com/Azure-Samples/ms-identity-docs-code-java",
    "https://github.com/Azure-Samples/ms-identity-docs-code-javascript",
    "https://github.com/Azure-Samples/ms-identity-docs-code-python",
    "https://github.com/Azure-Samples/ms-identity-dotnetcore-daemon-graph-cae",
    "https://github.com/Azure-Samples/ms-identity-node",
    "https://github.com/Azure-Samples/ms-identity-python-webapp-django",
    "https://github.com/Azure-Samples/msal-managed-identity",
    "https://github.com/Azure-Samples/msdocs-app-service-sqldb-dotnetcore",
    "https://github.com/Azure-Samples/msdocs-fastapi-postgres-codespace",
    "https://github.com/Azure-Samples/msdocs-python-django-azure-container-apps",
    "https://github.com/Azure-Samples/msdocs-python-django-webapp-quickstart",
    "https://github.com/aws-samples/msk-config-providers",
    "https://github.com/Azure-Samples/network-dotnet-create-simple-internet-facing-load-balancer",
    "https://github.com/Azure-Samples/network-dotnet-manage-internal-load-balancers",
    "https://github.com/Azure-Samples/network-dotnet-manage-internet-facing-load-balancers",
    "https://github.com/Azure-Samples/network-dotnet-manage-ip-address",
    "https://github.com/Azure-Samples/network-dotnet-manage-network-interface",
    "https://github.com/Azure-Samples/network-dotnet-manage-network-peering",
    "https://github.com/Azure-Samples/network-dotnet-manage-network-security-group",
    "https://github.com/Azure-Samples/network-dotnet-manage-virtual-network",
    "https://github.com/Azure-Samples/network-dotnet-manage-virtual-network-async",
    "https://github.com/Azure-Samples/network-dotnet-manage-virtual-network-to-virtual-network-vpn-connection",
    "https://github.com/Azure-Samples/network-dotnet-manage-virtual-network-with-site-to-site-vpn-connection",
    "https://github.com/aws-samples/nft-access-control-lambda-authorizer",
    "https://github.com/aws-samples/observability-with-amazon-opensearch",
    "https://github.com/Azure-Samples/open-liberty-on-aks",
    "https://github.com/Azure-Samples/Orleans-Cluster-on-Azure-App-Service",
    "https://github.com/aws-samples/pgp-decryption-for-transfer-family",
    "https://github.com/Azure-Samples/podcast-synopsis-generation-openai",
    "https://github.com/Azure-Samples/pubsub-dapr-aks-java",
    "https://github.com/aws-samples/pyflink-getting-started",
    "https://github.com/aws-samples/python-data-science-template",
    "https://github.com/aws-samples/qnabot-on-aws-plugin-samples",
    "https://github.com/Azure-Samples/quarkus-azure",
    "https://github.com/Azure-Samples/quote-of-the-day-dotnet",
    "https://github.com/aws-samples/reactive-refarch-cloudformation",
    "https://github.com/aws-samples/rekognition-video-people-blurring-cdk",
    "https://github.com/Azure-Samples/resources-dotnet-deploy-using-arm-template-with-progress",
    "https://github.com/aws-samples/saga-orchestration-netcore-blog",
    "https://github.com/aws-samples/sagemaker-studio-apps-lifecycle-config-examples",
    "https://github.com/aws-samples/sam-accelerate-nested-stacks-demo",
    "https://github.com/aws-samples/sample-python-helper-aws-appconfig",
    "https://github.com/spring-cloud-samples/sc-contract-car-rental",
    "https://github.com/Azure-Samples/search-dotnet-getting-started",
    "https://github.com/aws-samples/secure-pipelines-in-aws-workshop",
    "https://github.com/Azure-Samples/secure-tunneling-azure-relay",
    "https://github.com/aws-samples/serverless-httpdns",
    "https://github.com/aws-samples/serverless-java-frameworks-samples",
    "https://github.com/aws-samples/serverless-store-finder",
    "https://github.com/aws-samples/simple-websockets-chat-app",
    "https://github.com/spring-cloud-samples/sleuth-documentation-apps",
    "https://github.com/spring-cloud-samples/sleuth-issues",
    "https://github.com/aws-samples/spark-on-aws-lambda",
    "https://github.com/Azure-Samples/spring-chatgpt-sample",
    "https://github.com/aws-samples/streamlit-application-deployment-on-aws",
    "https://github.com/aws-samples/support-insights-with-amazon-q",
    "https://github.com/spring-cloud-samples/the-legacy-app",
    "https://github.com/Azure-Samples/traffic-manager-dotnet-manage-profiles",
    "https://github.com/spring-guides/tut-rest",
    "https://github.com/spring-guides/tut-spring-boot-kotlin",
    "https://github.com/Azure-Samples/vercel-nextjs-app-azure-db-mysql",
    "https://github.com/aws-samples/voice-enabled-patient-diary",
    "https://github.com/Azure-Samples/workshop-migrate-jboss-on-app-service"
);

# Função para encontrar a URL do repositório
function Get-RepoURL {
    param (
        [string]$repoName
    )

    foreach ($url in $reposURL) {
        if ($url -match "/$repoName$") {
            return $url
        }
    }
    return $null
}

# 1. Processar cada snapshot com o csDetector
Write-Host "Iniciando a análise de Community Smells com o csDetector..."
Set-Location $csDetectorPath

foreach ($repoFolder in Get-ChildItem -Directory $snapshotsPath) {
    $repoName = $repoFolder.Name
    $repoURL = Get-RepoURL -repoName $repoName

    # Verifica se a URL do repositório foi encontrada
    if ($null -eq $repoURL) {
        Write-Host "URL do repositório não encontrada para $repoName. Pulando..."
        continue
    }

    foreach ($yearFolder in Get-ChildItem -Directory $repoFolder.FullName) {
        $year = $yearFolder.Name
        $snapshotPath = $yearFolder.FullName

        Write-Host "Processando Community Smells para ${repoName} - Ano: $year..."

        # Definir pasta de saída para o csDetector
        $communityOutput = Join-Path -Path $outputCommunity -ChildPath "$repoName\$year"
        New-Item -ItemType Directory -Force -Path $communityOutput | Out-Null

        try {
            # Executar o csDetector no snapshot
            python devNetwork.py -p $PAT -r $repoURL -s $sentistrengthPath -o $communityOutput -y $year
            Write-Host "Análise de Community Smells para $repoName - Ano: ${year} completada com sucesso!"
        } catch {
            Write-Host "Erro ao processar Community Smells para $repoName - Ano: ${year}: $($_.Exception.Message)"
        }
    }
}

# 2. Processar cada snapshot com o Designite
Write-Host "Iniciando a análise de Code Smells com o Designite..."
Set-Location $designitePath

foreach ($repoFolder in Get-ChildItem -Directory $snapshotsPath) {
    $repoName = $repoFolder.Name

    foreach ($yearFolder in Get-ChildItem -Directory $repoFolder.FullName) {
        $year = $yearFolder.Name
        $snapshotPath = $yearFolder.FullName

        Write-Host "Processando Code Smells para $repoName - Ano: $year..."

        # Definir pasta de saída para o Designite
        $codeOutput = Join-Path -Path $outputCode -ChildPath "$repoName\$year"
        New-Item -ItemType Directory -Force -Path $codeOutput | Out-Null

        try {
            # Executar o Designite no snapshot
            java -Xms1336m -Xmx1336m -jar .\DesigniteJava.jar -i $snapshotPath -o $codeOutput
            Write-Host "Análise de Code Smells para $repoName - Ano: $year completada com sucesso!"
        } catch {
            Write-Host "Erro ao processar Code Smells para $repoName - Ano: ${year}: $($_.Exception.Message)"
        }
    }
}

Write-Host "Processo completo!"
