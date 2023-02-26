
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/legach/keyboard-layout-clear/releases/download/v1.0.1/KeyboardLayoutClear.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'KeyboardLayoutClear'
  FileFullPath  = "$toolsDir\KeyboardLayoutClear.exe"

  checksum      = '21051337E334E19B64C9695ADA8BAA28BA03F55083340D7F705205F1FC5F9A3B'
  checksumType  = 'sha256'
  checksum64    = '21051337E334E19B64C9695ADA8BAA28BA03F55083340D7F705205F1FC5F9A3B'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs
