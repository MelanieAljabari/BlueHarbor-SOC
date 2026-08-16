# SOC Home Lab

A lightweight Security Operations Center home lab built in a Debian Linux environment for practicing junior SOC analyst workflows.

## Skills Practiced

- Security log analysis
- Alert triage
- Network port and process investigation
- Packet capture and PCAP analysis
- DNS and HTTPS traffic analysis
- Authentication monitoring
- Brute-force detection
- Network baseline monitoring
- IOC enrichment
- File triage and SHA-256 hashing
- Bash scripting
- Incident documentation

## Tools

- Nmap
- tcpdump
- journalctl
- ss
- curl
- dig
- WHOIS
- Bash
- Git

## Lab Components

### Detection Scripts

- Failed authentication detection
- Brute-force login detection
- New listening-port detection
- Master detection runner with timestamped reports

### Network Analysis

Captured and analyzed network traffic using tcpdump, including:

- DNS queries
- IPv4 and IPv6 resolution
- HTTPS connections
- Port filtering

### IOC Investigation

Created a script for basic domain and IP enrichment using:

- DNS
- Reverse DNS
- WHOIS

### File Triage

Created a script that identifies:

- File type
- File size
- SHA-256 hash

### Case Investigation

CASE-001 documents the investigation of an unknown listening TCP port. The process was identified, verified, tested, and documented before being classified as expected activity.

## Purpose

This lab is designed to develop hands-on investigation, detection, documentation, and troubleshooting skills applicable to entry-level SOC and cybersecurity analyst roles.
