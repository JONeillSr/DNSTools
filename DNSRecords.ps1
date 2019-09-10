Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name sip -ZoneName mfgnc.com -HostNameAlias sipdir.online.lync.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name enterpriseregistration -ZoneName mfgnc.com -HostNameAlias enterpriseregistration.windows.net -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name lyncdiscover -ZoneName mfgnc.com -HostNameAlias webdir.online.lync.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name enterpriseenrollment -ZoneName mfgnc.com -HostNameAlias enterpriseenrollment.manage.microsoft.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecord -Srv -Name "_sip._tls" -ZoneName "mfgnc.com" -DomainName "sipdir.online.lync.com" -Priority 100 -Weight 1 -Port 443}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecord -Srv -Name "_sipfederationtls._tcp" -ZoneName "mfgnc.com" -DomainName "sipfed.online.lync.com" -Priority 100 -Weight 1 -Port 5061}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name autodiscover -ZoneName mfgnc.com -HostNameAlias autodiscover.outlook.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName Caldera.moldedfiberglass.com -ScriptBlock {Add-DnsServerResourceRecordMX -Preference 0  -Name "." -TimeToLive 01:00:00 -MailExchange "mfgnc-com.mail.protection.outlook.com" -ZoneName "mfgnc.com"}


include:spf.protection.outlook.com