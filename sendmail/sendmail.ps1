
$to = "adm.stallinger@outlook.com;mj.stallinger@outlook.com;mj.stallinger@mjst.at;mj.stallinger@gmx.at;mj.stallinger@gmail.com"
#$to = "adm.stallinger@outlook.com"
$user = "test@stallinger.io"    
$pass = ConvertTo-SecureString -String "xxx" -AsPlainText -Force

$cred = New-Object System.Management.Automation.PSCredential $user, $pass
$mailParam = @{
    To = $to.Split(';')
    From = $user
    Subject = "test"
    Body = "test"
    SmtpServer = "smtp.improvmx.com"
    Port = 587
    Credential = $cred
}

Send-MailMessage @mailParam -UseSsl
