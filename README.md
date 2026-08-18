# BlueHarbor SOC

**Home SOC Detection, Incident Response, and Security Automation Platform**

> Status: Active Development

BlueHarbor SOC is a hands-on cybersecurity portfolio project built to simulate practical Security Operations Center workflows in a lightweight Linux environment.

The project began as a basic SOC home lab and is being expanded into a more complete detection and incident-response platform with custom detection engineering, alert correlation, MITRE ATT&CK mapping, security automation, incident case generation, and centralized monitoring.

The goal is not simply to run security tools, but to understand how security telemetry becomes a detection, how detections become investigations, and how multiple events can be correlated into a complete incident story.

---

## Current Capabilities

### Security Monitoring

- Linux security log analysis
- Authentication monitoring
- Failed-login detection
- Threshold-based brute-force detection
- Listening-port baseline monitoring
- Detection of newly opened network listeners
- Network and process investigation
- DNS and HTTPS traffic analysis
- Packet capture and PCAP investigation

### Security Automation

- Bash-based detection scripts
- Master detection runner
- Timestamped detection reports
- IOC enrichment workflow
- File triage
- SHA-256 hashing
- Network baseline comparison

### Incident Investigation

- Evidence collection
- Alert triage
- Process investigation
- Network connection analysis
- Incident documentation
- Case-based investigation workflow

---

## Existing Detection Logic

BlueHarbor currently includes three primary Linux detections.

### Failed Authentication Detection

Searches Linux system logs for authentication-related events including:

- Failed passwords
- Authentication failures
- Invalid users

### Brute-Force Detection

Analyzes authentication logs by source IP and generates an alert when failed login attempts exceed a defined threshold.

Current threshold:

`5 failed authentication attempts`

### New Listening Port Detection

Maintains a known-good baseline of listening TCP and UDP sockets and compares the current system state against that baseline.

New listeners generate an alert for further investigation.

---

## Detection Pipeline

```text
System Logs / Network Activity
              |
              v
      Detection Scripts
              |
              v
      Detection Runner
              |
              v
      Timestamped Report
              |
              v
       Analyst Review

