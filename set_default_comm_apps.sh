#!/bin/bash

# Set Microsoft Outlook as the default mail program
/usr/local/bin/duti -s com.microsoft.outlook mailto

# Set Microsoft Outlook as the default calendar program
/usr/local/bin/duti -s com.microsoft.outlook ics all

# Set Microsoft Outlook as the default contacts program
/usr/local/bin/duti -s com.microsoft.outlook vcf all