
#$to = "adm.stallinger@outlook.com;mj.stallinger@outlook.com;mj.stallinger@mjst.at;mj.stallinger@gmx.at;mj.stallinger@gmail.com"
$to = "admin@stallinger.io"
$user = "device@stallinger.io"
$pass = ConvertTo-SecureString -String "sdsdsdsds" -AsPlainText -Force

$cred = New-Object System.Management.Automation.PSCredential $user, $pass
$mailParam = @{
    To = $to.Split(';')
    From = $user
    Subject = "testSMTP"
    Body = "test"
    SmtpServer = "stallinger-io.mail.protection.outlook.com"
    Port = 25
    Credential = $cred
}

Send-MailMessage @mailParam -UseSsl
