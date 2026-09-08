$ErrorActionPreference = "Stop"
$ExpectedUser = "OkiemuteEsiri"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is not installed. Install it first from https://cli.github.com/."
}

$CurrentUser = gh api user --jq .login
if ($CurrentUser -ne $ExpectedUser) {
    throw "Safety stop: gh is authenticated as $CurrentUser, not $ExpectedUser. No repositories were created."
}

$Catalog = @(
    [pscustomobject]@{ Name = "vulnerability-prioritization-engine"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "vulnerability-sla-analyzer"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "patch-compliance-dashboard"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "cve-risk-enrichment"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "asset-criticality-scoring"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "exposure-management-lab"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "vulnerability-aging-analysis"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "remediation-exception-tracker"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "scanner-data-normalizer"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "vulnerability-deduplication-tool"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "kev-catalog-correlator"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "epss-priority-model"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "cvss-contextualizer"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "patch-gap-analyzer"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "eol-asset-detector"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "vulnerability-trend-reporting"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "remediation-kpi-engine"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "vulnerability-owner-mapper"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "risk-acceptance-register"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "attack-surface-inventory"; Category = "vulnerability-management"; Description = "Risk-based vulnerability management and exposure engineering" }
    [pscustomobject]@{ Name = "red-team-engagement-planner"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "adversary-emulation-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "mitre-attack-navigator-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "initial-access-simulation"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "phishing-awareness-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "credential-access-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "lateral-movement-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "persistence-techniques-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "privilege-escalation-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "command-control-simulation"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "defense-evasion-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "discovery-techniques-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "collection-techniques-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "exfiltration-simulation-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "red-team-reporting-template"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "attack-path-mapper"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "purple-team-exercise-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "operator-checklist"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "red-team-infrastructure-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "payload-analysis-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "powershell-tradecraft-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "linux-post-exploitation-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "windows-post-exploitation-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "kerberos-attack-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "password-spray-detection-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "web-shell-detection-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "c2-traffic-detection-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "credential-dumping-detection-lab"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "adversary-behavior-notebook"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "red-team-lessons-learned"; Category = "red-teaming"; Description = "Authorized red team and adversary emulation lab" }
    [pscustomobject]@{ Name = "owasp-top10-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "web-pentest-reporting"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "burp-suite-workflow-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "api-security-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "jwt-security-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "oauth-security-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "session-management-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "access-control-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "idor-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "sql-injection-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "xss-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "ssrf-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "file-upload-security-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "deserialization-security-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "business-logic-testing-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "web-authentication-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "secure-headers-audit"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "content-security-policy-lab"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "web-vulnerability-triage"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "web-remediation-validation"; Category = "web-application-security"; Description = "Web application and API security testing lab" }
    [pscustomobject]@{ Name = "network-pentest-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "nmap-enumeration-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "service-fingerprinting-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "network-segmentation-audit"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "firewall-rule-review-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "ids-ips-testing-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "packet-analysis-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "wireshark-detection-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "dns-security-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "dhcp-security-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "smb-security-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "rdp-security-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "ssh-hardening-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "tls-configuration-audit"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "network-attack-path-mapper"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "vpn-security-assessment"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "zero-trust-network-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "east-west-traffic-analysis"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "network-baseline-anomaly-lab"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "network-remediation-validation"; Category = "network-security"; Description = "Network security assessment and hardening lab" }
    [pscustomobject]@{ Name = "active-directory-security-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "bloodhound-attack-path-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "kerberoasting-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "asrep-roasting-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "delegation-abuse-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "adcs-security-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "gpo-security-review"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "local-admin-paths-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "ntlm-security-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "ldap-security-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "identity-privilege-audit"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "entra-id-security-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "mfa-bypass-detection-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "conditional-access-review"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "identity-remediation-lab"; Category = "active-directory-identity"; Description = "Active Directory and identity security lab" }
    [pscustomobject]@{ Name = "aws-security-baseline"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "azure-security-baseline"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "gcp-security-baseline"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-iam-review-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-misconfiguration-scanner"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "s3-storage-security-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "azure-storage-security-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-network-security-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-logging-detection-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-incident-response-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "container-registry-security"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-secrets-management-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "serverless-security-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-attack-paths-lab"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "cloud-security-posture-dashboard"; Category = "cloud-security"; Description = "Cloud security engineering lab" }
    [pscustomobject]@{ Name = "incident-response-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "windows-event-detection-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "sysmon-detection-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "sigma-rules-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "sentinel-detection-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "defender-xdr-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "crowdstrike-hunting-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "log-analysis-toolkit"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "malware-triage-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "ransomware-response-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "phishing-investigation-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "credential-theft-investigation"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "lateral-movement-detection"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "persistence-detection-lab"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "endpoint-isolation-playbook"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "incident-timeline-builder"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "ioc-enrichment-pipeline"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "forensic-artifact-checklist"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "detection-engineering-playbook"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "purple-team-detection-validation"; Category = "detection-incident-response"; Description = "Detection engineering and incident response lab" }
    [pscustomobject]@{ Name = "threat-intelligence-cve-enrichment"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "ioc-enrichment-engine"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "threat-actor-tracking-lab"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "mitre-technique-mapper"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "threat-feed-normalizer"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "domain-reputation-lab"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "ip-reputation-lab"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "malware-family-tracker"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "threat-intel-reporting"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "vulnerability-threat-correlation"; Category = "threat-intelligence"; Description = "Threat intelligence engineering project" }
    [pscustomobject]@{ Name = "security-automation-toolkit"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "python-security-scripts"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "powershell-security-scripts"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "security-api-integration-lab"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "servicenow-security-automation"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "jira-vulnerability-automation"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "email-risk-notification-automation"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "csv-security-data-cleaner"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "json-security-data-transformer"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "security-report-generator"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "asset-inventory-automation"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "ioc-blocklist-generator"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "vulnerability-ticket-generator"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "security-metrics-pipeline"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "security-data-quality-checks"; Category = "security-automation"; Description = "Security automation and data engineering project" }
    [pscustomobject]@{ Name = "wireless-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "wifi-encryption-audit"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "rogue-ap-detection-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "mobile-application-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "android-security-testing-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "ios-security-review-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "mobile-api-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "iot-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "firmware-analysis-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "mqtt-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "bluetooth-security-lab"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "embedded-device-threat-model"; Category = "wireless-mobile-iot"; Description = "Wireless, mobile, or IoT security lab" }
    [pscustomobject]@{ Name = "devsecops-pipeline-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "github-actions-security-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "sast-integration-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "dast-integration-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "dependency-scanning-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "secret-scanning-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "docker-security-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "kubernetes-security-lab"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "infrastructure-as-code-security"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
    [pscustomobject]@{ Name = "software-supply-chain-security"; Category = "devsecops-container"; Description = "DevSecOps, container, and software supply-chain security lab" }
)

if ($Catalog.Count -ne 187) { throw "Catalog validation failed: expected 187 repositories, found $($Catalog.Count)." }
if (($Catalog.Name | Sort-Object -Unique).Count -ne 187) { throw "Catalog validation failed: duplicate repository names detected." }

Write-Host "Authenticated GitHub account: $CurrentUser"
Write-Host "Validated repository catalog: $($Catalog.Count) unique repositories."

foreach ($Item in $Catalog) {
    $FullName = "$ExpectedUser/$($Item.Name)"
    gh repo view $FullName *> $null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "SKIP existing: $FullName"
        continue
    }

    Write-Host "CREATE: $FullName"
    gh repo create $FullName --public --description $Item.Description --add-readme
    if ($LASTEXITCODE -ne 0) { throw "Repository creation failed for $FullName." }
}

Write-Host "Provisioning complete. Re-run safely at any time; existing repositories will be skipped."