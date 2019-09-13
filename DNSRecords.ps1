Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name sip -ZoneName foo.com -HostNameAlias sipdir.online.lync.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name enterpriseregistration -ZoneName foo.com -HostNameAlias enterpriseregistration.windows.net -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name lyncdiscover -ZoneName foo.com -HostNameAlias webdir.online.lync.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name enterpriseenrollment -ZoneName foo.com -HostNameAlias enterpriseenrollment.manage.microsoft.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecord -Srv -Name "_sip._tls" -ZoneName "foo.com" -DomainName "sipdir.online.lync.com" -Priority 100 -Weight 1 -Port 443}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecord -Srv -Name "_sipfederationtls._tcp" -ZoneName "foo.com" -DomainName "sipfed.online.lync.com" -Priority 100 -Weight 1 -Port 5061}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordCName -Name autodiscover -ZoneName foo.com -HostNameAlias autodiscover.outlook.com -TimeToLive 3600}
Invoke-Command -Credential $cred -ComputerName server.contoso.com -ScriptBlock {Add-DnsServerResourceRecordMX -Preference 0  -Name "." -TimeToLive 01:00:00 -MailExchange "foo-com.mail.protection.outlook.com" -ZoneName "foo.com"}


include:spf.protection.outlook.com
