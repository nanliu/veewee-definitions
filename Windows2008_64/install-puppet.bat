cmd /C cscript %TEMP%\wget.vbs /url:http://downloads.puppetlabs.com/windows/puppet-3.1.0.msi /path:%TEMP%\puppet.msi
cmd /C msiexec /qn /i %TEMP%\puppet.msi
